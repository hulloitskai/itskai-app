# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-multipart` gem.
# Please instead update this file by running `bin/tapioca gem faraday-multipart`.

# This is the main namespace for Faraday.
#
# It provides methods to create {Connection} objects, and HTTP-related
# methods to use directly.
#
# @example Helpful class methods for easy usage
#   Faraday.get "http://faraday.com"
# @example Helpful class method `.new` to create {Connection} objects.
#   conn = Faraday.new "http://faraday.com"
#   conn.get '/'
module Faraday
  class << self
    # @overload default_adapter
    # @overload default_adapter=
    def default_adapter; end

    # Documented elsewhere, see default_adapter reader
    def default_adapter=(adapter); end

    # @overload default_connection
    # @overload default_connection=
    def default_connection; end

    # Documented below, see default_connection
    def default_connection=(_arg0); end

    # Gets the default connection options used when calling {Faraday#new}.
    #
    # @return [Faraday::ConnectionOptions]
    def default_connection_options; end

    # Sets the default options used when calling {Faraday#new}.
    #
    # @param options [Hash, Faraday::ConnectionOptions]
    def default_connection_options=(options); end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy; end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy=(_arg0); end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path; end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path=(_arg0); end

    # Initializes a new {Connection}.
    #
    # @example With an URL argument
    #   Faraday.new 'http://faraday.com'
    #   # => Faraday::Connection to http://faraday.com
    # @example With everything in an options hash
    #   Faraday.new url: 'http://faraday.com',
    #   params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @example With an URL argument and an options hash
    #   Faraday.new 'http://faraday.com', params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @param url [String, Hash] The optional String base URL to use as a prefix
    #   for all requests.  Can also be the options Hash. Any of these
    #   values will be set on every request made, unless overridden
    #   for a specific request.
    # @param options [Hash]
    # @return [Faraday::Connection]
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # Internal: Requires internal Faraday libraries.
    #
    # @param libs [Array] one or more relative String names to Faraday classes.
    # @private
    # @return [void]
    def require_lib(*libs); end

    # Internal: Requires internal Faraday libraries.
    #
    # @param libs [Array] one or more relative String names to Faraday classes.
    # @private
    # @return [void]
    def require_libs(*libs); end

    # @return [Boolean]
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path; end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path=(_arg0); end

    private

    # Internal: Proxies method calls on the Faraday constant to
    # .default_connection.
    def method_missing(name, *args, &block); end
  end
end

Faraday::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO

# Aliases for Faraday v1, these are all deprecated and will be removed in v2 of this middleware
Faraday::FilePart = Multipart::Post::UploadIO

Faraday::METHODS_WITH_BODY = T.let(T.unsafe(nil), Array)
Faraday::METHODS_WITH_QUERY = T.let(T.unsafe(nil), Array)

# Main Faraday::Multipart module.
module Faraday::Multipart
  class << self
    def multipart_post_version; end
  end
end

# Similar to, but not compatible with CompositeReadIO provided by the
# multipart-post gem.
# https://github.com/nicksieger/multipart-post/blob/master/lib/composite_io.rb
class Faraday::Multipart::CompositeReadIO
  # @return [CompositeReadIO] a new instance of CompositeReadIO
  def initialize(*parts); end

  # Close each of the IOs.
  #
  # @return [void]
  def close; end

  def ensure_open_and_readable; end

  # @return [Integer] sum of the lengths of all the parts
  def length; end

  # Read from IOs in order until `length` bytes have been received.
  #
  # @param length [Integer, nil]
  # @param outbuf [String, nil]
  def read(length = T.unsafe(nil), outbuf = T.unsafe(nil)); end

  # Rewind each of the IOs and reset the index to 0.
  #
  # @return [void]
  def rewind; end

  private

  def advance_io; end
  def current_io; end
end

Faraday::Multipart::FilePart = Multipart::Post::UploadIO

# Middleware for supporting multi-part requests.
class Faraday::Multipart::Middleware < ::Faraday::Request::UrlEncoded
  # @return [Middleware] a new instance of Middleware
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  # Checks for files in the payload, otherwise leaves everything untouched.
  #
  # @param env [Faraday::Env]
  def call(env); end

  # @param env [Faraday::Env]
  # @param params [Hash]
  def create_multipart(env, params); end

  # Returns true if obj is an enumerable with values that are multipart.
  #
  # @param obj [Object]
  # @return [Boolean]
  def has_multipart?(obj); end

  def part(boundary, key, value); end

  # @param params [Hash]
  # @param prefix [String]
  # @param pieces [Array]
  def process_params(params, prefix = T.unsafe(nil), pieces = T.unsafe(nil), &block); end

  # @param env [Faraday::Env]
  # @return [Boolean]
  def process_request?(env); end

  # @return [String]
  def unique_boundary; end
end

Faraday::Multipart::Middleware::DEFAULT_BOUNDARY_PREFIX = T.let(T.unsafe(nil), String)

# Multipart value used to POST data with a content type.
class Faraday::Multipart::ParamPart
  # @param value [String] Uploaded content as a String.
  # @param content_type [String] String content type of the value.
  # @param content_id [String] Optional String of this value's Content-ID.
  # @return [Faraday::ParamPart]
  def initialize(value, content_type, content_id = T.unsafe(nil)); end

  # The value's content ID, if given.
  #
  # @return [String, nil]
  def content_id; end

  # The value's content type.
  #
  # @return [String]
  def content_type; end

  # Returns a Hash of String key/value pairs.
  #
  # @return [Hash]
  def headers; end

  # Converts this value to a form part.
  #
  # @param boundary [String] String multipart boundary that must not exist in
  #   the content exactly.
  # @param key [String] String key name for this value.
  # @return [Faraday::Parts::Part]
  def to_part(boundary, key); end

  # The content to upload.
  #
  # @return [String]
  def value; end
end

Faraday::Multipart::Parts = Multipart::Post::Parts
Faraday::Multipart::VERSION = T.let(T.unsafe(nil), String)
Faraday::ParamPart = Faraday::Multipart::ParamPart
Faraday::Parts = Multipart::Post::Parts
Faraday::Timer = Timeout

# multipart-post v2.2.0 introduces a new class hierarchy for classes like Parts and UploadIO
# For backwards compatibility, detect the gem version and use the right class
Faraday::UploadIO = Multipart::Post::UploadIO

Faraday::VERSION = T.let(T.unsafe(nil), String)
