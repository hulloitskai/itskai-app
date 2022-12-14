# typed: strict
# frozen_string_literal: true

class CurrentlyPlaying
  class Poller
    extend T::Sig

    # == Concerns
    include Logging

    # == Initialization
    sig { params(previous_result: T.nilable(RSpotify::Track)).void }
    def initialize(previous_result:)
      @previous_result = previous_result
    end

    # == Execution
    sig { returns(T.nilable(RSpotify::Track)) }
    def call
      if Spotify.ready?
        tag_logger { logger.debug("Polling") }
      else
        tag_logger { logger.warn("Spotify not ready; skipping") }
        return
      end
      Spotify.currently_playing.tap do |track|
        track = T.let(track, T.nilable(RSpotify::Track))
        if track&.id != previous_result&.id
          if track.present?
            tag_logger { logger.info("Currently playing: #{track.name}") }
          else
            tag_logger { logger.info("Stopped playing") }
          end
        end
      end
    rescue => error
      tag_logger { logger.error("Error: #{error}") }
      Honeybadger.notify(error)
      nil
    end

    private

    # == Helpers
    sig { returns(T.nilable(RSpotify::Track)) }
    attr_reader :previous_result
  end
end
