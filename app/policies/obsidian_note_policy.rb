# typed: strict
# frozen_string_literal: true

class ObsidianNotePolicy < ApplicationPolicy
  # == Rules
  sig { override.returns(T::Boolean) }
  def index?
    true
  end

  sig { override.returns(T::Boolean) }
  def show?
    !record!.hidden?
  end

  sig { returns(T::Boolean) }
  def edit?
    false
  end

  alias_rule :read?, to: :edit?

  # == Scopes
  relation_scope do |relation|
    T.bind(self, ObsidianNotePolicy)
    user&.owner? ? relation : relation.where(hidden: false)
  end

  # == Helpers
  sig { returns(ObsidianNote) }
  def record!
    T.must(record)
  end
end
