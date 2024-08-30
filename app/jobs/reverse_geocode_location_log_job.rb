# typed: strict
# frozen_string_literal: true

class ReverseGeocodeLocationLogJob < ApplicationJob
  # == Configuration
  good_job_control_concurrency_with(
    key: -> {
      T.bind(self, ReverseGeocodeLocationLogJob)
      log, *_ = arguments
      "#{self.class.name}(#{log.to_gid})"
    },
    perform_limit: 1,
  )
  retry_on Geocoder::OverQueryLimitError
  queue_with_priority 10

  # == Job
  sig { params(log: LocationLog).void }
  def perform(log)
    log.reverse_geocode
  end
end
