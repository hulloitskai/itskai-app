# typed: true
# frozen_string_literal: true

class ICloudCredentialsPolicy < ApplicationPolicy
  # == Rules
  def show?
    false
  end

  def edit?
    false
  end
end
