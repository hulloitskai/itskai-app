# typed: true
# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    # == Filters
    before_action :store_redirect_location, only: :new

    # == Actions
    # GET /login
    def new
      render(inertia: "LoginPage", props: { failed: flash.alert.present? })
    end

    # POST /login
    def create
      resource = T.let(self.resource = warden.authenticate!(auth_options), User)
      sign_in(resource_name, resource)
      inertia_location(after_sign_in_path_for(resource))
    end

    # DELETE /logout
    def destroy
      sign_out(resource)
      inertia_location(after_sign_out_path_for(resource_name))
    end

    private

    # == Filter handlers
    sig { void }
    def store_redirect_location
      if (url = params[:redirect_url].presence)
        raise "Redirect URL must be a string" unless url.is_a?(String)
        store_location_for(:user, url)
      end
    end
  end
end
