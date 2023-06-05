# typed: strict
# frozen_string_literal: true

class ImportJournalEntryBlocksJob < ApplicationJob
  # == Configuration
  good_job_control_concurrency_with(
    key: -> {
      T.bind(self, ImportJournalEntryBlocksJob)
      entry = T.let(arguments.first!, JournalEntry)
      "#{self.class.name}:#{entry.id}"
    },
    total_limit: 1,
  )

  # == Callbacks
  before_perform :update_activity_status

  # == Job
  sig { params(entry: JournalEntry).void }
  def perform(entry)
    entry.import_blocks
  end

  private

  # == Callback Handlers
  sig { void }
  def update_activity_status
    entry = T.let(arguments.first!, JournalEntry)
    ActivityService.update_status("Importing journal entry: #{entry.title}")
  end
end
