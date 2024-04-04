# typed: strict
# frozen_string_literal: true

module Types
  class LyricLineType < BaseObject
    # == Fields
    field :start_time_milliseconds, Integer, null: false
    field :words, String, null: false

    # == Helpers
    sig { override.returns(LyricLine) }
    def object = super
  end
end
