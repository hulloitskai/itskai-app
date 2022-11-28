# typed: strict
# frozen_string_literal: true

module Types
  class OAuthCredentialsType < BaseObject
    # == Interfaces
    implements NodeType
    implements IdentifiableType

    # == Fields
    field :name, String, null: false
    field :refresh_token, String
    field :uid, String, null: false
  end
end
