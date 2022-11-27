# rubocop:disable GraphQL/ExtractType
# typed: strict
# frozen_string_literal: true

module Types
  class QueryType < BaseObject
    extend T::Sig
    extend T::Helpers

    # == Relay ==
    # Add 'node' and 'nodes' fields.
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # == Fields ==
    field :test_echo, resolver: Queries::TestEcho

    field :contact_email, resolver: Queries::ContactEmail
    field :resume, resolver: Queries::Resume
    field :timezone, resolver: Queries::Timezone
    field :viewer, resolver: Queries::Viewer

    field :icloud_credentials, resolver: Queries::ICloudCredentials

    field :obsidian_note, resolver: Queries::ObsidianNote
    field :obsidian_note_by_name, resolver: Queries::ObsidianNoteByName
    field :obsidian_notes, resolver: Queries::ObsidianNotes
  end
end
