# typed: true
# frozen_string_literal: true

class ICloudService < ApplicationService
  class << self
    # == Service
    sig { override.returns(T::Boolean) }
    def enabled?
      return @enabled if defined?(@enabled)
      @enabled = !!(super && !ENV["ICLOUD_ENABLED"].falsy?)
    end

    # == Methods
    sig { returns(ICloudCredentials) }
    def credentials
      checked { instance.credentials }
    end

    sig { returns(Client) }
    def client
      checked { instance.client }
    end

    sig { returns(Drive) }
    def drive
      checked { instance.drive }
    end

    sig { params(code: T.nilable(String)).returns(T::Boolean) }
    def verify_security_code(code) = instance.verify_security_code(code)
  end

  # == Configuration
  config_accessor :credentials_dir, default: Rails.root.join("tmp/icloud")

  # == Initialization
  sig { void }
  def initialize
    super
    @credentials = T.let(@credentials, T.nilable(ICloudCredentials))
    @client = T.let(@client, T.nilable(Client))
  end

  # == Service
  sig { override.returns(T::Boolean) }
  def ready?
    !!(super && @credentials.present? && @client.present? && \
        !@client.requires_security_code?)
  end

  sig { override.void }
  def start
    super
    return if disabled?
    Thread.new do
      @credentials = ICloudCredentials.first
      authenticate if @credentials.present?
    end
  end

  # == Methods
  sig { returns(ICloudCredentials) }
  def credentials
    @credentials or raise "Not authenticated (missing credentials)"
  end

  sig { returns(Client) }
  def client
    @client or raise "Not authenticated (missing client)"
  end

  sig { returns(Drive) }
  def drive = authenticated_client.drive

  sig { params(code: T.nilable(String)).returns(T::Boolean) }
  def verify_security_code(code)
    client.verify_security_code(code).tap do
      ObsidianNote.synchronize_all_later
    end
  end

  private

  # == Helpers
  sig { void }
  def authenticate
    @client = Client.new(credentials:)
  rescue PyCall::PyError => error
    type, message = error.type.__name__, error.value.to_s
    if type == "ConnectionError" &&
        message.include?("Failed to establish a new connection")
      tag_logger do
        logger.warn(
          "Failed to authenticate (bad connection); skipping",
        )
      end
    else
      raise
    end
  end

  sig { returns(Client) }
  def authenticated_client
    client.tap do |client|
      client = T.let(client, Client)
      if client.requires_security_code?
        raise "Not authenticated (requires security code)"
      end
    end
  end
end
