# typed: true
# frozen_string_literal: true

module Queries
  class SpotifyCredentials < BaseQuery
    # == Configuration
    description "Spotify OAuth credentials."

    # == Type
    type Types::OAuthCredentialsType, null: true

    # == Resolver
    sig { returns(T.nilable(OAuthCredentials)) }
    def resolve
      OAuthCredentials.spotify.try! do |credentials|
        credentials = T.let(credentials, ::OAuthCredentials)
        credentials if allowed_to?(:show?, credentials)
      end
    end
  end
end
