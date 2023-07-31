# typed: true
# frozen_string_literal: true

class HomepageController < ApplicationController
  # == Filters
  before_action :set_entry

  # == Actions
  def show
    Thread.new do
      ActivityService.update_status("Someone landed on the homepage!")
    end
    entry_id = @entry&.to_gid&.to_s
    data = query!("HomePageQuery", { entry_id: })
    render(inertia: "HomePage", props: { data: })
  end

  private

  # == Filter handlers
  def set_entry
    @entry = T.let(@entry, T.nilable(JournalEntry))
    @entry = if (id = params["entryId"])
      JournalEntry.find(id.to_s)
    end
  end
end
