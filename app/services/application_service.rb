# typed: strict
# frozen_string_literal: true

class ApplicationService
  extend T::Sig
  extend T::Helpers

  include ActiveSupport::Configurable
  include Singleton
  include Logging

  class << self
    extend T::Sig
    extend T::Helpers

    # == Class Methods
    sig { returns(T.nilable(T.attached_class)) }
    def start
      if Rails.server?
        if disabled?
          puts "=> Skipping #{name} initialization (disabled)" # rubocop:disable Rails/Output, Layout/LineLength
        elsif !started?
          puts "=> Initializing #{name}" # rubocop:disable Rails/Output
        end
      end
      unless disabled?
        instance.tap(&:start)
      end
    end

    sig { returns(T.nilable(T.attached_class)) }
    def stop = instance.tap(&:stop)

    sig { returns(T.nilable(T.attached_class)) }
    def restart = instance.tap(&:restart)

    sig { overridable.returns(T::Boolean) }
    def disabled?
      setting("DISABLED").truthy?
    end

    sig { returns(T::Boolean) }
    def debug?
      setting("DEBUG").truthy?
    end

    sig { returns(T::Boolean) }
    def enabled? = !disabled?

    sig { returns(T::Boolean) }
    def started? = instance.started?

    sig { returns(T::Boolean) }
    def ready? = enabled? && instance.ready?

    protected

    # == Helpers
    sig { params(name: String).returns(T.nilable(String)) }
    def setting(name)
      ENV["#{env_prefix}_#{name}"]
    end

    private

    # == Helpers
    sig do
      type_parameters(:U).params(
        block: T.proc.returns(T.type_parameter((:U))),
      ).returns(T.type_parameter((:U)))
    end
    def checked(&block)
      raise "#{name} is disabled" if disabled?
      raise "#{name} is not ready" unless ready?
      yield
    end

    sig { returns(String) }
    def env_prefix
      @env_prefix = T.let(@env_prefix, T.nilable(String))
      @env_prefix ||= T.must(name).delete_suffix("Service").underscore.upcase
    end
  end

  # == Initialization
  sig { void }
  def initialize
    @started = T.let(false, T::Boolean)
  end

  # == Methods
  sig { returns(T::Boolean) }
  def enabled? = self.class.enabled?

  sig { returns(T::Boolean) }
  def disabled? = self.class.disabled?

  sig { returns(T::Boolean) }
  def debug? = self.class.debug?

  sig { returns(T::Boolean) }
  def started?
    @started
  end

  sig { overridable.returns(T::Boolean) }
  def ready?
    started?
  end

  sig { overridable.void }
  def start
    @started = true
  end

  sig { overridable.void }
  def stop
    @started = false
  end

  sig { void }
  def restart
    stop
    start
  end
end
