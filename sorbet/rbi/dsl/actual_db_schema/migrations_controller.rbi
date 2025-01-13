# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActualDbSchema::MigrationsController`.
# Please instead update this file by running `bin/tapioca dsl ActualDbSchema::MigrationsController`.


class ActualDbSchema::MigrationsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::InertiaRails::Helper
    include ::InertiaRails::AssetHelper
    include ::ViteRails::TagHelpers
    include ::ActionController::Base::HelperMethods

    sig { returns(T.untyped) }
    def migration; end

    sig { returns(T.untyped) }
    def migrations; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
