# typed: true
# frozen_string_literal: true

# == Schema information
#
# Table name: location_logs
#
#  id                  :uuid             not null, primary key
#  coordinates         :geography        not null, point, 4326
#  floor_level         :integer          not null
#  horizontal_accuracy :float            not null
#  timestamp           :datetime         not null
#  vertical_accuracy   :float            not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_location_logs_on_timestamp  (timestamp)
#
# == Schema information
#
# Table name: location_logs
#
#  id                  :uuid             not null, primary key
#  coordinates         :geography        not null, point, 4326
#  floor_level         :integer          not null
#  horizontal_accuracy :float            not null
#  timestamp           :datetime         not null
#  vertical_accuracy   :float            not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_location_logs_on_timestamp  (timestamp)
#
class LocationLog < ApplicationRecord
  include Identifiable

  # == Attributes
  sig { returns(Float) }
  def latitude = coordinates.y

  sig { returns(Float) }
  def longitude = coordinates.x

  sig { returns(Float) }
  def altitude = coordinates.z

  sig { returns(T.untyped) }
  def approximate_coordinates
    LocationLog.coordinates_factory.point(
      coordinates.x.round(2),
      coordinates.y.round(2),
    )
  end

  sig { returns(LocationLog::PrivateRelation) }
  def trail_markers
    latest = timestamp
    earliest = latest - 4.hours
    LocationLog.where(timestamp: earliest..latest).order(timestamp: :desc)
  end

  # == Associations
  has_one :address, class_name: "LocationLogAddress", dependent: :destroy

  sig { returns(LocationLogAddress) }
  def address!
    address or raise ActiveRecord::RecordNotFound, "Missing address"
  end

  delegate :full_address,
           :approximate_address,
           :google_maps_area_url,
           to: :address!

  # == Callbacks
  after_create :reverse_geocode_and_save!

  # == Scopes
  scope :with_address, -> {
    T.bind(self, PrivateRelation)
    left_joins(:address).where.not(location_log_addresses: { id: nil })
  }

  scope :_latest, -> {
    T.bind(self, PrivateRelation)
    with_address.order(timestamp: :desc).limit(1)
  }
  private_class_method :_latest

  # == Geocoding
  reverse_geocoded_by :latitude, :longitude do |log, results|
    result = results.first or next
    result = T.cast(result, Geocoder::Result::Here)
    result_type = T.let(result.data.fetch("resultType"), String)
    title = result.data["title"]
    place_name = title if result_type == "place"
    address = log.build_address(
      place_name:,
      full_address: result.address,
      street_address: [result.street_number, result.route].compact.join(" "),
      neighbourhood: result.data.dig("address", "district"),
      city: result.city,
      province: result.province,
      country: result.country,
      country_code: result.country_code,
      postal_code: result.postal_code,
    )
    unless address.valid?
      log.address = nil
      with_log_tags do
        logger.warn(
          "Invalid address for location log with id `#{log.id}': " +
            address.errors.full_messages.to_sentence,
        )
      end
    end
  end

  sig { returns(RGeo::Geographic::Factory) }
  def self.coordinates_factory
    RGeo::Geographic.spherical_factory(srid: 4326, has_z_coordinate: true)
  end

  sig { override.returns(T.untyped) }
  def reverse_geocode
    with_log_tags { logger.info("Reverse-geocoding log with id `#{id}'") }
    super
  end

  # == Synchronization
  sig { returns(T.nilable(LocationLog)) }
  def self.sync
    iphone = ICloudctl.iphone or raise "Couldn't load iPhone details"
    location = iphone.location or return
    timestamp = Time.zone.at(location.fetch("timeStamp").to_f / 1000)
    transaction do
      if (log = LocationLog.find_by(timestamp:))
        log
      else
        coordinates = scoped do
          latitude, longitude, altitude = location.fetch_values(
            "latitude",
            "longitude",
            "altitude",
          )
          coordinates_factory.point(longitude, latitude, altitude)
        end
        other_attributes = location.slice(
          "horizontalAccuracy",
          "verticalAccuracy",
          "floorLevel",
        ).transform_keys(&:underscore)
        create!(timestamp:, coordinates:, **other_attributes)
      end
    end
  end

  sig { void }
  def sync_later
    SyncLocationLogsJob.perform_later
  end

  # == Finders
  sig { params(where: T.untyped).returns(T.nilable(LocationLog)) }
  def self.latest(*where)
    relation = _latest
    if where.present?
      relation = T.cast(relation.where(*T.unsafe(where)), PrivateRelation)
    end
    relation.first
  end

  sig { params(where: T.untyped).returns(LocationLog) }
  def self.latest!(*where)
    relation = _latest
    if where.present?
      relation = T.cast(relation.where(*T.unsafe(where)), PrivateRelation)
    end
    relation.first!
  end

  sig { returns(T.nilable(LocationLog)) }
  def self.latest_visible
    latest(timestamp: 6.hours.ago..) unless Location.hide?
  end

  # == Methods
  sig { void }
  def reverse_geocode_and_save!
    reverse_geocode.tap { save! }
  end
end
