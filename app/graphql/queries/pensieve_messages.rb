# typed: true
# frozen_string_literal: true

module Queries
  class PensieveMessages < BaseQuery
    # == Type
    type [Types::PensieveMessageType], null: false

    # == Resolver
    sig { returns(T::Enumerable[::PensieveMessage]) }
    def resolve
      PensieveMessage
        .where("timestamp > ?", 1.day.ago)
        .order(:timestamp)
        .limit(100)
    end
  end
end