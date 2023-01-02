# typed: strict
# frozen_string_literal: true

module Mutations
  class ObsidianNoteSynchronize < BaseMutation
    class Payload < T::Struct
      const :success, T::Boolean
    end

    # == Fields
    field :success, Boolean

    # == Arguments
    argument :force, Boolean, required: false

    # == Resolver
    sig do
      override(allow_incompatible: true).params(
        force: T::Boolean,
      ).returns(Payload)
    end
    def resolve(force: false)
      authorize!(to: :synchronize?, with: ObsidianNotePolicy)
      ObsidianNote.synchronize_all_later(force:)
      Payload.new(success: true)
    end
  end
end