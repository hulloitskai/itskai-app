# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `DashboardController`.
# Please instead update this file by running `bin/tapioca dsl DashboardController`.

class DashboardController
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
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
