# typed: strict
# frozen_string_literal: true

class CurrentlyPlayingPoll
  extend T::Sig

  include Singleton
  include Concurrent
  include Logging

  # == Initializer
  sig { void }
  def initialize
    @task = T.let(@task, T.nilable(TimerTask))
  end

  # == Running
  sig { void }
  def start
    stop
    @task = TimerTask.new(execution_interval: 3) do
      Rails.application.executor.wrap do
        update
      end
    end
    ActiveSupport::Dependencies.interlock.permit_concurrent_loads do
      @task.execute
    end
  end

  sig { void }
  def self.start = instance.start

  sig { void }
  def stop
    if @task
      ActiveSupport::Dependencies.interlock.permit_concurrent_loads do
        @task.kill if @task.running?
      end
      @task = nil
    end
  end

  sig { void }
  def self.stop = instance.stop

  private

  sig { returns(T::Boolean) }
  def update
    value = if (user = SpotifyUser.current)
      ActiveSupport::Dependencies.interlock.permit_concurrent_loads do
        user.currently_playing
      end
    end
    if value != CurrentlyPlaying.current
      CurrentlyPlaying.current = value
      tag_logger do
        if value.present?
          logger.info(
            "Currently playing: #{value.track.name} " \
              "(#{value.progress_milliseconds}ms)",
          )
        else
          logger.info("Stopped playing")
        end
      end
      true
    else
      false
    end
  rescue => error
    tag_logger { logger.error("Error: #{error}") }
    Rails.error.report(error, handled: true)
    false
  end
end
