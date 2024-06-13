# typed: strict
# frozen_string_literal: true

# == Schema Information
#
# Table name: icloud_credentials
#
#  id         :uuid             not null, primary key
#  cookies    :text
#  email      :string           not null
#  password   :string           not null
#  session    :jsonb
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ICloudCredentials < ApplicationRecord
  include Identifiable

  # == Attributes
  self.filter_attributes += %i[password cookies session]

  # == Finders
  sig { returns(T.nilable(ICloudCredentials)) }
  def self.current = first

  # == Validations
  validates :email,
            email: true,
            length: { maximum: 100 },
            presence: true
  validates :password, presence: true
end
