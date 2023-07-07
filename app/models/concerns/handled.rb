# typed: strict
# frozen_string_literal: true

module Handled
  extend T::Sig
  extend T::Helpers
  extend ActiveSupport::Concern

  # == Annotations
  abstract!
  requires_ancestor { ApplicationRecord }

  included do
    T.bind(self, T.all(T.class_of(ApplicationRecord), ClassMethods))

    # == Configuration
    requires_columns :handle
  end

  class_methods do
    extend T::Sig
    extend T::Helpers

    # == Class Annotations
    requires_ancestor { T.class_of(ApplicationRecord) }

    # == Class Methods
    sig { returns(Integer) }
    def generated_handle_length
      @generated_handle_length || 16
    end

    sig { params(size: Integer).returns(Integer) }
    def generated_handle_length=(size)
      @generated_handle_length = T.let(@generated_handle_length,
                                       T.nilable(Integer))
      @generated_handle_length = size
    end

    sig { returns(String) }
    def generate_handle
      Nanoid.generate(
        alphabet:
          "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
        size: generated_handle_length,
      )
    end
  end

  # == Interface
  sig { abstract.returns(::String) }
  def handle; end

  sig { abstract.params(value: ::String).returns(::String) }
  def handle=(value); end

  sig { abstract.returns(T::Boolean) }
  def handle?; end

  # == Methods
  sig { returns(String) }
  def generate_handle
    self[:handle] ||= T.cast(self.class, ClassMethods).generate_handle
  end

  sig { returns(String) }
  def generate_handle!
    self.handle = generate_handle
  end

  sig { void }
  def clear_handle
    self[:handle] = nil
  end
end