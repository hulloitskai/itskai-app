# typed: strict
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
    field :success, Boolean, null: false

    # == Helpers
    sig do
      override.params(
        args: T.untyped,
        kwargs: T.untyped,
        block: T.nilable(T.proc.bind(Types::BaseField).void),
      ).void
    end
    def self.field(*args, **kwargs, &block) = super

    # == Resolver
    sig do
      override
        .params(args: T.untyped, kwargs: T.untyped, block: T.untyped)
        .returns(T.untyped)
    end
    def resolve_with_support(*args, **kwargs, &block)
      result = super
      if result.is_a?(GraphQL::Execution::Lazy)
        result.then do |result|
          transform_resolve_result(result)
        end
      else
        transform_resolve_result(result)
      end
    end

    private

    sig { params(result: T.untyped).returns(T.untyped) }
    def transform_resolve_result(result)
      result = result.serialize if result.is_a?(T::Struct)
      if result.is_a?(Hash)
        result = result.with_indifferent_access
        unless result.include?(:success)
          result[:success] = result[:errors].blank?
        end
      end
      result
    end
  end
end
