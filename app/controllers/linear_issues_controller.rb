# typed: strict
# frozen_string_literal: true

class LinearIssuesController < ApplicationController
  # == Configuration
  protect_from_forgery with: :null_session, only: :create

  # == Actions
  # POST /issues
  sig { void }
  def create
    issue_params = self.issue_params
    title = issue_params[:title] or raise "Missing title"
    title = T.cast(title, String)
    description = issue_params[:description]
    description = T.cast(description, T.nilable(String))
    issue = Linear.create_issue(title:, description:)
    issue_payload = issue.to_h.slice("id", "title", "description")
  rescue => error
    respond_to do |format|
      format.html { raise }
      format.text do
        render(
          status: :internal_server_error,
          plain: "Failed to add issue: #{error.message}",
        )
      end
      format.json do
        render(
          status: :internal_server_error,
          json: { error: error.message },
        )
      end
    end
  else
    respond_to do |format|
      format.html do
        redirect_to(root_path, notice: "Issue added successfully!")
      end
      format.text { render(plain: "Issue added successfully!") }
      format.json { render(json: issue_payload) }
    end
  end

  private

  # == Helpers
  sig { returns(ActionController::Parameters) }
  def issue_params
    params.permit(:title, :description)
  end
end
