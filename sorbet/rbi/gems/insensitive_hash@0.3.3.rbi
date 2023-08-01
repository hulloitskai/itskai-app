# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `insensitive_hash` gem.
# Please instead update this file by running `bin/tapioca gem insensitive_hash`.

# source://insensitive_hash//lib/insensitive_hash.rb#4
class Hash
  include ::Enumerable

  # @option options
  # @option options
  # @param options [Hash] Options
  # @return [InsensitiveHash]
  #
  # source://insensitive_hash//lib/insensitive_hash.rb#9
  def insensitive(options = T.unsafe(nil)); end
end

# Insensitive Hash.
#
# @author Junegunn Choi <junegunn.c@gmail.com>
#
# source://insensitive_hash//lib/insensitive_hash/version.rb#1
class InsensitiveHash < ::Hash
  # @return [InsensitiveHash] a new instance of InsensitiveHash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#21
  def initialize(default = T.unsafe(nil), &block); end

  def [](key); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#86
  def []=(key, value); end

  def assoc(key); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#131
  def clear; end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#176
  def clone; end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#126
  def delete(key, &block); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#169
  def dup; end

  # @return [#call] Key encoder. Determines the level of insensitivity.
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#6
  def encoder; end

  # @param prc [#call] Key encoder. Determines the level of insensitivity.
  # @raise [ArgumentError]
  # @return [#call]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#49
  def encoder=(prc); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#163
  def fetch(*args, &block); end

  def has_key?(key); end
  def include?(key); end
  def key?(key); end
  def member?(key); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#105
  def merge(other_hash); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#95
  def merge!(other_hash); end

  # Merge another hash recursively.
  #
  # @param other_hash [Hash|InsensitiveHash]
  # @return [self]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#116
  def merge_recursive!(other_hash); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#137
  def replace(other); end

  # Sets whether to detect key clashes
  #
  # @param [Boolean]
  # @raise [ArgumentError]
  # @return [Boolean]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#37
  def safe=(s); end

  # @return [Boolean] Key-clash detection enabled?
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#43
  def safe?; end

  # Returns a normal, sensitive Hash
  #
  # @return [Hash]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#64
  def sensitive; end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#151
  def shift; end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#86
  def store(key, value); end

  # Returns a normal, sensitive Hash
  #
  # @return [Hash]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#64
  def to_hash; end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#105
  def update(other_hash); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#95
  def update!(other_hash); end

  # Merge another hash recursively.
  #
  # @param other_hash [Hash|InsensitiveHash]
  # @return [self]
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#116
  def update_recursive!(other_hash); end

  # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
  #
  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#158
  def values_at(*keys); end

  private

  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#183
  def deep_set(key, value); end

  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#221
  def detect_clash(hash); end

  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#217
  def encode(key); end

  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#208
  def lookup_key(key, delete = T.unsafe(nil)); end

  # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#188
  def wrap(value); end

  class << self
    # @see http://www.ruby-doc.org/core-1.9.3/Hash.html Hash
    #
    # source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#70
    def [](*init); end
  end
end

# source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#12
InsensitiveHash::DEFAULT_ENCODER = T.let(T.unsafe(nil), Proc)

# Thrown when safe mode is on and another Hash with conflicting keys cannot be merged safely
#
# source://insensitive_hash//lib/insensitive_hash/insensitive_hash.rb#9
class InsensitiveHash::KeyClashError < ::Exception; end

# source://insensitive_hash//lib/insensitive_hash/version.rb#2
InsensitiveHash::VERSION = T.let(T.unsafe(nil), String)
