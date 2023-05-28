# typed: strict
# frozen_string_literal: true

module Subscriptions
  class TestSubscription < BaseSubscription
    @count = T.let(0, Integer)

    class << self
      extend T::Sig

      # == Class Attributes
      sig { returns(Integer) }
      attr_reader :count

      # == Class Methods
      sig { returns(Integer) }
      def increment!
        @count += 1
      end
    end

    # == Configuration
    broadcastable true

    # == Type
    type Int

    # == Callback Handlers
    sig { returns(Integer) }
    def subscribe
      self.class.increment!.tap do |count|
        Schema.subscriptions!.trigger(:test_subscription, {}, count)
      end
    end
  end
end
