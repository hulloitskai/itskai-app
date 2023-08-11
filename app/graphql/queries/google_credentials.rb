# typed: true
# frozen_string_literal: true

module Queries
  class GoogleCredentials < BaseQuery
    # == Type
    type Types::OAuthCredentialsType, null: true

    # == Resolver
    sig { returns(T.nilable(OAuthCredentials)) }
    def resolve
      if (credentials = OAuthCredentials.google)
        credentials if allowed_to?(:show?, credentials)
      end
    end
  end
end