# typed: strict
# frozen_string_literal: true

module Types
  class LocationLogType < BaseObject
    # == Interfaces
    implements NodeType

    # == Fields
    field :approximate_address, String, null: false
    field :approximate_coordinates, CoordinatesType, null: false
    field :details, LocationDetailsType, null: false do
      argument :access_token, String, required: true
    end
    field :google_maps_area_url, String, null: false
    field :timestamp, DateTimeType, null: false

    # == Resolvers
    delegate :approximate_address, :google_maps_area_url, to: :address

    sig { returns(T.untyped) }
    def approximate_coordinates
      coords = object.coordinates
      LocationLog.coordinates_factory.point(
        coords.x.round(2),
        coords.y.round(2),
      )
    end

    sig { params(access_token: String).returns(LocationDetails) }
    def details(access_token:)
      access = LocationAccess.valid.find_by(token: access_token) or
        raise GraphQL::ExecutionError, "Token is invalid or expired."
      LocationDetails.new(log: object, access_grant: access.grant!)
    end

    # == Helpers
    sig { override.returns(LocationLog) }
    def object = super

    private

    # == Helpers
    sig { returns(LocationLogAddress) }
    def address
      object.address!
    end
  end
end
