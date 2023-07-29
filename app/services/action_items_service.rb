# typed: true
# frozen_string_literal: true

class ActionItemsService < ApplicationService
  class << self
    # == Service
    sig { override.returns(T::Boolean) }
    def disabled?
      !notion_available? || database_id.nil? || super
    end

    # == Accessors
    sig { returns(T.nilable(String)) }
    def database_id
      setting("DATABASE_ID")
    end

    # == Methods
    sig { params(name: String).returns(T.untyped) }
    def create_page(name:)
      checked { instance.create_page(name:) }
    end

    private

    # == Helpers
    sig { returns(T::Boolean) }
    def notion_available?
      Notion.config.token.present?
    end
  end

  # == Initialization
  sig { void }
  def initialize
    super
    @client = T.let(Notion::Client.new, Notion::Client)
  end

  # == Accessors
  sig { returns(String) }
  def database_id
    self.class.database_id or raise "Database ID not set"
  end

  # == Methods
  sig { params(name: String).returns(T.untyped) }
  def create_page(name:)
    @client.create_page(
      parent: {
        database_id:,
      },
      properties: {
        "Name" => {
          "title" => [{
            "text" => {
              "content" => name,
            },
          }],
        },
      },
    )
  end
end