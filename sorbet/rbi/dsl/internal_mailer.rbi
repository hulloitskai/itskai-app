# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `InternalMailer`.
# Please instead update this file by running `bin/tapioca dsl InternalMailer`.

class InternalMailer
  class << self
    sig { params(email: ::Email).returns(::ActionMailer::MessageDelivery) }
    def email(email:); end

    sig { params(business: ::Business).returns(::ActionMailer::MessageDelivery) }
    def new_business_email(business:); end

    sig { params(community: ::Community).returns(::ActionMailer::MessageDelivery) }
    def new_community_email(community:); end

    sig { params(offering: ::Offering).returns(::ActionMailer::MessageDelivery) }
    def new_enable_bookings_email(offering:); end

    sig { params(offering: ::Offering).returns(::ActionMailer::MessageDelivery) }
    def new_offering_email(offering:); end

    sig { params(post: ::Post).returns(::ActionMailer::MessageDelivery) }
    def new_post_email(post:); end

    sig { params(user: ::User).returns(::ActionMailer::MessageDelivery) }
    def new_user_email(user:); end
  end
end
