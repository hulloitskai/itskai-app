# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `CommunityBusinessMembershipForm`.
# Please instead update this file by running `bin/tapioca dsl CommunityBusinessMembershipForm`.

class CommunityBusinessMembershipForm
  sig { returns(T.nilable(::String)) }
  def business_id; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def business_id=(value); end

  sig { returns(T.untyped) }
  def offering_ids; end

  sig { params(value: T.untyped).returns(T.untyped) }
  def offering_ids=(value); end

  sig { returns(T.untyped) }
  def offering_inclusion; end

  sig { returns(Enumerize::Value) }
  def offering_inclusion; end

  sig { params(value: T.untyped).returns(T.untyped) }
  def offering_inclusion=(value); end

  class << self
    sig { returns(Enumerize::Attribute) }
    def offering_inclusion; end
  end
end
