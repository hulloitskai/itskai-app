# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `WorkController`.
# Please instead update this file by running `bin/tapioca dsl WorkController`.

class WorkController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionController::Base::HelperMethods
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end