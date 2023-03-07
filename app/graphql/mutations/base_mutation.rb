# typed: true
# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    extend T::Sig
    extend T::Helpers

    include ActionPolicy::GraphQL::Behaviour
    include Resolver

    # == Configuration
    object_class Types::BaseObject
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    argument_class Types::BaseArgument
    null false

    # == Resolver
    def resolve_with_support(...)
      ActiveRecord::Base.transaction do
        result = super
        result.is_a?(T::Struct) ? result.serialize : result
      end
    end
  end
end

# == Sorbet
module Mutations
  class BaseMutation
    # == Annotations
    sig do
      override.params(
        args: T.untyped,
        kwargs: T.untyped,
        block: T.nilable(T.proc.bind(Types::BaseField).void),
      ).void
    end
    def self.field(*args, **kwargs, &block)
      super
    end
  end
end
