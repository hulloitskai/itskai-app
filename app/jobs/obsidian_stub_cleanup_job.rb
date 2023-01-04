# typed: strict
# frozen_string_literal: true

class ObsidianStubCleanupJob < ApplicationJob
  extend T::Sig

  # == Configuration
  good_job_control_concurrency_with(key: name, total_limit: 1)

  # == Callbacks
  around_perform :around_update_activity_status

  sig { void }
  def perform
    ObsidianStub
      .where.missing(:incoming_relations)
      .find_each(&:destroy!)
  end

  private

  # == Callbacks
  sig { params(block: T.proc.void).void }
  def around_update_activity_status(&block)
    ActivityStatus.update("Cleaning up stubs")
    yield
    ActivityStatus.update("Stub cleanup complete")
  end
end
