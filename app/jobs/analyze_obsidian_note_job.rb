# typed: strict
# frozen_string_literal: true

class AnalyzeObsidianNoteJob < ApplicationJob
  # == Configuration
  good_job_control_concurrency_with(
    key: -> do
      T.bind(self, AnalyzeObsidianNoteJob)
      note = T.let(arguments.first!, ObsidianNote)
      "#{self.class.name}:#{note.id}"
    end,
    total_limit: 1,
  )

  # == Callbacks
  before_perform :update_activity_status

  # == Job
  sig { params(note: ObsidianNote).void }
  def perform(note)
    note.analyze
  end

  private

  # == Callback Handlers
  sig { void }
  def update_activity_status
    note = T.let(arguments.first!, ObsidianNote)
    ActivityService.update_status("Analyzing Obsidian note: #{note.name}")
  end
end
