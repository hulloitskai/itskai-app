# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Devise::InvitationsController`.
# Please instead update this file by running `bin/tapioca dsl Devise::InvitationsController`.

class Devise::InvitationsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Loaf::OptionsValidator
    include ::Loaf::ViewExtensions
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Hotwire::Livereload::LivereloadTagsHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::AdminHelper
    include ::DeviseHelper
    include ::HostsHelper
    include ::MetaTagsHelper
    include ::TenantHelper
    include ::TurboHelper
    include ::LocalTimeHelper
    include ::PreviewHelper
    include ::ApplicationController::HelperMethods
    include ::DeviseController::HelperMethods

    sig { params(resource_or_scope: T.untyped).returns(T.untyped) }
    def after_sign_in_path_for(resource_or_scope); end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
