# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::Blob`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::Blob`.

class ActiveStorage::Blob
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  sig { returns(ActiveStorage::Attached::One) }
  def preview_image; end

  sig { params(attachable: T.untyped).returns(T.untyped) }
  def preview_image=(attachable); end

  private

  sig { returns(NilClass) }
  def to_ary; end

  module CommonRelationMethods
    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::Blob).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def average(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.untyped) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T.untyped) }
    def count(column_name = nil); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def create(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def fifth; end

    sig { returns(::ActiveStorage::Blob) }
    def fifth!; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def find(*args); end

    sig { params(args: T.untyped).returns(T.nilable(::ActiveStorage::Blob)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::ActiveStorage::Blob) }
    def find_by!(*args); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def find_or_initialize_by(attributes, &block); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(T.nilable(::ActiveStorage::Blob)) }
    def find_signed(signed_id, purpose: nil); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(::ActiveStorage::Blob) }
    def find_signed!(signed_id, purpose: nil); end

    sig { params(arg: T.untyped, args: T.untyped).returns(::ActiveStorage::Blob) }
    def find_sole_by(arg, *args); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def first(limit = nil); end

    sig { returns(::ActiveStorage::Blob) }
    def first!; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def forty_two; end

    sig { returns(::ActiveStorage::Blob) }
    def forty_two!; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def fourth; end

    sig { returns(::ActiveStorage::Blob) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def last(limit = nil); end

    sig { returns(::ActiveStorage::Blob) }
    def last!; end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::Blob).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def many?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def maximum(column_name); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def member?(record); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def minimum(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)
      ).returns(::ActiveStorage::Blob)
    end
    def new(attributes = nil, &block); end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::Blob).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def none?(&block); end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::Blob).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def second; end

    sig { returns(::ActiveStorage::Blob) }
    def second!; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def second_to_last; end

    sig { returns(::ActiveStorage::Blob) }
    def second_to_last!; end

    sig { returns(::ActiveStorage::Blob) }
    def sole; end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T.untyped)
    end
    def sum(column_name = nil, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def take(limit = nil); end

    sig { returns(::ActiveStorage::Blob) }
    def take!; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def third; end

    sig { returns(::ActiveStorage::Blob) }
    def third!; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def third_to_last; end

    sig { returns(::ActiveStorage::Blob) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    sig { returns(T::Array[T.untyped]) }
    def attachment_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def attachment_ids=(ids); end

    # This method is created by ActiveRecord on the `ActiveStorage::Blob` class because it declared `has_many :attachments`.
    # 🔗 [Rails guide for `has_many` association](https://guides.rubyonrails.org/association_basics.html#the-has-many-association)
    sig { returns(::ActiveStorage::Attachment::PrivateCollectionProxy) }
    def attachments; end

    sig { params(value: T::Enumerable[::ActiveStorage::Attachment]).void }
    def attachments=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def build_preview_image_attachment(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def build_preview_image_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def create_preview_image_attachment(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def create_preview_image_attachment!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_preview_image_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_preview_image_blob!(*args, &blk); end

    sig { returns(T.nilable(::ActiveStorage::Attachment)) }
    def preview_image_attachment; end

    sig { params(value: T.nilable(::ActiveStorage::Attachment)).void }
    def preview_image_attachment=(value); end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def preview_image_blob; end

    sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
    def preview_image_blob=(value); end

    sig { returns(T.nilable(::ActiveStorage::Attachment)) }
    def reload_preview_image_attachment; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def reload_preview_image_blob; end

    sig { returns(T::Array[T.untyped]) }
    def variant_record_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def variant_record_ids=(ids); end

    # This method is created by ActiveRecord on the `ActiveStorage::Blob` class because it declared `has_many :variant_records`.
    # 🔗 [Rails guide for `has_many` association](https://guides.rubyonrails.org/association_basics.html#the-has-many-association)
    sig { returns(::ActiveStorage::VariantRecord::PrivateCollectionProxy) }
    def variant_records; end

    sig { params(value: T::Enumerable[::ActiveStorage::VariantRecord]).void }
    def variant_records=(value); end
  end

  module GeneratedAssociationRelationMethods
    sig { returns(PrivateAssociationRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def includes(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert!(attributes, returning: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert_all(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert_all!(attributes, returning: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def unattached(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def unscope(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert_all(attributes, returning: nil, unique_by: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def with_attached_preview_image(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def without(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(::Integer) }
    def byte_size; end

    sig { params(value: ::Integer).returns(::Integer) }
    def byte_size=(value); end

    sig { returns(T::Boolean) }
    def byte_size?; end

    sig { returns(T.nilable(::Integer)) }
    def byte_size_before_last_save; end

    sig { returns(T.untyped) }
    def byte_size_before_type_cast; end

    sig { returns(T::Boolean) }
    def byte_size_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def byte_size_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def byte_size_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def byte_size_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def byte_size_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def byte_size_previous_change; end

    sig { returns(T::Boolean) }
    def byte_size_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def byte_size_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def byte_size_was; end

    sig { void }
    def byte_size_will_change!; end

    sig { returns(T.nilable(::String)) }
    def checksum; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def checksum=(value); end

    sig { returns(T::Boolean) }
    def checksum?; end

    sig { returns(T.nilable(::String)) }
    def checksum_before_last_save; end

    sig { returns(T.untyped) }
    def checksum_before_type_cast; end

    sig { returns(T::Boolean) }
    def checksum_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def checksum_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def checksum_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def checksum_changed?; end

    sig { returns(T.nilable(::String)) }
    def checksum_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def checksum_previous_change; end

    sig { returns(T::Boolean) }
    def checksum_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def checksum_previously_was; end

    sig { returns(T.nilable(::String)) }
    def checksum_was; end

    sig { void }
    def checksum_will_change!; end

    sig { returns(T.nilable(::String)) }
    def content_type; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def content_type=(value); end

    sig { returns(T::Boolean) }
    def content_type?; end

    sig { returns(T.nilable(::String)) }
    def content_type_before_last_save; end

    sig { returns(T.untyped) }
    def content_type_before_type_cast; end

    sig { returns(T::Boolean) }
    def content_type_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def content_type_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def content_type_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def content_type_changed?; end

    sig { returns(T.nilable(::String)) }
    def content_type_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def content_type_previous_change; end

    sig { returns(T::Boolean) }
    def content_type_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def content_type_previously_was; end

    sig { returns(T.nilable(::String)) }
    def content_type_was; end

    sig { void }
    def content_type_will_change!; end

    sig { returns(T.nilable(::Time)) }
    def created_at; end

    sig { params(value: ::Time).returns(::Time) }
    def created_at=(value); end

    sig { returns(T::Boolean) }
    def created_at?; end

    sig { returns(T.nilable(::Time)) }
    def created_at_before_last_save; end

    sig { returns(T.untyped) }
    def created_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def created_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Time), T.nilable(::Time)])) }
    def created_at_change; end

    sig { returns(T.nilable([T.nilable(::Time), T.nilable(::Time)])) }
    def created_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def created_at_changed?; end

    sig { returns(T.nilable(::Time)) }
    def created_at_in_database; end

    sig { returns(T.nilable([T.nilable(::Time), T.nilable(::Time)])) }
    def created_at_previous_change; end

    sig { returns(T::Boolean) }
    def created_at_previously_changed?; end

    sig { returns(T.nilable(::Time)) }
    def created_at_previously_was; end

    sig { returns(T.nilable(::Time)) }
    def created_at_was; end

    sig { void }
    def created_at_will_change!; end

    sig { returns(::String) }
    def filename; end

    sig { params(value: ::String).returns(::String) }
    def filename=(value); end

    sig { returns(T::Boolean) }
    def filename?; end

    sig { returns(T.nilable(::String)) }
    def filename_before_last_save; end

    sig { returns(T.untyped) }
    def filename_before_type_cast; end

    sig { returns(T::Boolean) }
    def filename_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def filename_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def filename_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def filename_changed?; end

    sig { returns(T.nilable(::String)) }
    def filename_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def filename_previous_change; end

    sig { returns(T::Boolean) }
    def filename_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def filename_previously_was; end

    sig { returns(T.nilable(::String)) }
    def filename_was; end

    sig { void }
    def filename_will_change!; end

    sig { returns(T.nilable(::String)) }
    def id; end

    sig { params(value: ::String).returns(::String) }
    def id=(value); end

    sig { returns(T::Boolean) }
    def id?; end

    sig { returns(T.nilable(::String)) }
    def id_before_last_save; end

    sig { returns(T.untyped) }
    def id_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def id_changed?; end

    sig { returns(T.nilable(::String)) }
    def id_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_previous_change; end

    sig { returns(T::Boolean) }
    def id_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def id_previously_was; end

    sig { returns(T.nilable(::String)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { returns(::String) }
    def key; end

    sig { params(value: ::String).returns(::String) }
    def key=(value); end

    sig { returns(T::Boolean) }
    def key?; end

    sig { returns(T.nilable(::String)) }
    def key_before_last_save; end

    sig { returns(T.untyped) }
    def key_before_type_cast; end

    sig { returns(T::Boolean) }
    def key_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def key_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def key_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def key_changed?; end

    sig { returns(T.nilable(::String)) }
    def key_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def key_previous_change; end

    sig { returns(T::Boolean) }
    def key_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def key_previously_was; end

    sig { returns(T.nilable(::String)) }
    def key_was; end

    sig { void }
    def key_will_change!; end

    sig { returns(T.untyped) }
    def metadata; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def metadata=(value); end

    sig { returns(T::Boolean) }
    def metadata?; end

    sig { returns(T.untyped) }
    def metadata_before_last_save; end

    sig { returns(T.untyped) }
    def metadata_before_type_cast; end

    sig { returns(T::Boolean) }
    def metadata_came_from_user?; end

    sig { returns(T.nilable([T.untyped, T.untyped])) }
    def metadata_change; end

    sig { returns(T.nilable([T.untyped, T.untyped])) }
    def metadata_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def metadata_changed?; end

    sig { returns(T.untyped) }
    def metadata_in_database; end

    sig { returns(T.nilable([T.untyped, T.untyped])) }
    def metadata_previous_change; end

    sig { returns(T::Boolean) }
    def metadata_previously_changed?; end

    sig { returns(T.untyped) }
    def metadata_previously_was; end

    sig { returns(T.untyped) }
    def metadata_was; end

    sig { void }
    def metadata_will_change!; end

    sig { void }
    def restore_byte_size!; end

    sig { void }
    def restore_checksum!; end

    sig { void }
    def restore_content_type!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_filename!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_key!; end

    sig { void }
    def restore_metadata!; end

    sig { void }
    def restore_service_name!; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_byte_size; end

    sig { returns(T::Boolean) }
    def saved_change_to_byte_size?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_checksum; end

    sig { returns(T::Boolean) }
    def saved_change_to_checksum?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_content_type; end

    sig { returns(T::Boolean) }
    def saved_change_to_content_type?; end

    sig { returns(T.nilable([T.nilable(::Time), T.nilable(::Time)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_filename; end

    sig { returns(T::Boolean) }
    def saved_change_to_filename?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_key; end

    sig { returns(T::Boolean) }
    def saved_change_to_key?; end

    sig { returns(T.nilable([T.untyped, T.untyped])) }
    def saved_change_to_metadata; end

    sig { returns(T::Boolean) }
    def saved_change_to_metadata?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_service_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_service_name?; end

    sig { returns(::String) }
    def service_name; end

    sig { params(value: ::String).returns(::String) }
    def service_name=(value); end

    sig { returns(T::Boolean) }
    def service_name?; end

    sig { returns(T.nilable(::String)) }
    def service_name_before_last_save; end

    sig { returns(T.untyped) }
    def service_name_before_type_cast; end

    sig { returns(T::Boolean) }
    def service_name_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def service_name_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def service_name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def service_name_changed?; end

    sig { returns(T.nilable(::String)) }
    def service_name_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def service_name_previous_change; end

    sig { returns(T::Boolean) }
    def service_name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def service_name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def service_name_was; end

    sig { void }
    def service_name_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_byte_size?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_checksum?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_content_type?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_filename?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_key?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_metadata?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_service_name?; end
  end

  module GeneratedRelationMethods
    sig { returns(PrivateRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unattached(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def with_attached_preview_image(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def without(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::ActiveStorage::Blob } }

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_ary; end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::ActiveStorage::Blob } }

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateAssociationRelation) }
    def not(opts, *rest); end
  end

  class PrivateCollectionProxy < ::ActiveRecord::Associations::CollectionProxy
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::ActiveStorage::Blob } }

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, Integer, String, T::Enumerable[T.any(::ActiveStorage::Blob, Integer, String, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(T::Array[::ActiveStorage::Blob])
    end
    def delete(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, Integer, String, T::Enumerable[T.any(::ActiveStorage::Blob, Integer, String, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(T::Array[::ActiveStorage::Blob])
    end
    def destroy(*records); end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def load_target; end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::ActiveStorage::Blob, T::Enumerable[T.any(::ActiveStorage::Blob, T::Enumerable[::ActiveStorage::Blob])])
      ).returns(T::Array[::ActiveStorage::Blob])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def target; end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::ActiveStorage::Blob } }

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::Blob]) }
    def to_ary; end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::ActiveStorage::Blob } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
