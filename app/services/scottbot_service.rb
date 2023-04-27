# typed: true
# frozen_string_literal: true

class ScottbotService < ApplicationService
  class << self
    # == Service
    sig { override.returns(T::Boolean) }
    def enabled?
      return !!@enabled if defined?(@enabled)
      @enabled = T.must(super && \
        [discord_token, discord_channel_id].all?(&:present?))
    end

    sig { void }
    def stop = instance.stop

    # == Methods
    sig { params(type: Symbol).void }
    def signal(type)
      checked { instance.signal(type) }
    end

    sig { returns(T.nilable(String)) }
    def discord_token
      return @discord_token if defined?(@discord_token)
      @discord_token = ENV["SCOTTBOT_DISCORD_TOKEN"]
    end

    sig { returns(T.nilable(String)) }
    def discord_channel_id
      return @discord_channel_id if defined?(@discord_channel_id)
      @discord_channel_id = ENV["SCOTTBOT_DISCORD_CHANNEL_ID"]
    end
  end

  # == Initialization
  sig { void }
  def initialize
    super
    @bot = Discordrb::Bot.new(
      token: discord_token,
      intents: [Discordrb::INTENTS[:server_messages]],
    )
  end

  sig { override.void }
  def start
    super
    return if disabled?
    bot.run(true)
  end

  sig { void }
  def stop
    bot.stop if started?
  end

  # == Method
  sig { params(type: Symbol).void }
  def signal(type)
    message = case type
    when :break
      "`break;` – Scott is caught in an unproductive cycle and would like to " \
        "exit it!"
    when :rand
      "`rand()` – Scott wants to experience something new!"
    when :panic
      "`panic!` – Something has not gone to plan for Scott in a major way!"
    else
      raise "Unknown type: #{type}"
    end
    send_message(message)
  end

  private

  # == Attributes
  sig { returns(Discordrb::Bot) }
  attr_reader :bot

  # == Helpers
  sig { returns(String) }
  def discord_token
    T.must(self.class.discord_token)
  end

  sig { returns(String) }
  def discord_channel_id
    T.must(self.class.discord_channel_id)
  end

  sig { params(message: String).void }
  def send_message(message)
    bot.send_message(discord_channel_id, message)
  end
end
