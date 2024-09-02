# typed: true
# frozen_string_literal: true

class CreateIndexGoodJobsJobsOnPriorityCreatedAtWhenUnfinished < ActiveRecord::Migration[ # rubocop:disable Layout/LineLength
  7.0
]
  disable_ddl_transaction!

  def change
    reversible do |dir|
      dir.up do
        # Ensure this incremental update migration is idempotent
        # with monolithic install migration.
        if connection.index_name_exists?(
          :good_jobs,
          :index_good_jobs_jobs_on_priority_created_at_when_unfinished,
        )
          return
        end
      end
    end

    add_index :good_jobs,
      %i[priority created_at],
      order: {
        priority: "DESC NULLS LAST",
        created_at: :asc,
      },
      where: "finished_at IS NULL",
      name:
        :index_good_jobs_jobs_on_priority_created_at_when_unfinished,
      algorithm: :concurrently
  end
end
