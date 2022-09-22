# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday_middleware` gem.
# Please instead update this file by running `bin/tapioca gem faraday_middleware`.

module Faraday
  class << self
    def default_adapter; end
    def default_adapter=(adapter); end
    def default_connection; end
    def default_connection=(_arg0); end
    def default_connection_options; end
    def default_connection_options=(options); end
    def ignore_env_proxy; end
    def ignore_env_proxy=(_arg0); end
    def lib_path; end
    def lib_path=(_arg0); end
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end
    def require_lib(*libs); end
    def require_libs(*libs); end
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end
    def root_path; end
    def root_path=(_arg0); end

    private

    def method_missing(name, *args, &block); end
  end
end

Faraday::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO
Faraday::FilePart = Multipart::Post::UploadIO
Faraday::METHODS_WITH_BODY = T.let(T.unsafe(nil), Array)
Faraday::METHODS_WITH_QUERY = T.let(T.unsafe(nil), Array)
Faraday::ParamPart = Faraday::Multipart::ParamPart
Faraday::Parts = Multipart::Post::Parts

# Autoload classes for Faraday::Request.
class Faraday::Request < ::Struct
  extend ::Faraday::MiddlewareRegistry
  extend ::Faraday::AutoloadHelper

  def [](key); end
  def []=(key, value); end
  def headers=(hash); end
  def marshal_dump; end
  def marshal_load(serialised); end
  # def method; end
  def params=(hash); end
  def to_env(connection); end
  def url(path, params = T.unsafe(nil)); end

  class << self
    def create(request_method); end
  end
end

Faraday::Request::Multipart = Faraday::Multipart::Middleware

# deprecated alias
Faraday::Request::OAuth = FaradayMiddleware::OAuth

# deprecated alias
Faraday::Request::OAuth2 = FaradayMiddleware::OAuth2

Faraday::Request::Retry = Faraday::Retry::Middleware

# Autoload classes for Faraday::Request.
class Faraday::Response
  extend ::Forwardable
  extend ::Faraday::MiddlewareRegistry
  extend ::Faraday::AutoloadHelper

  def initialize(env = T.unsafe(nil)); end

  def [](*args, **_arg1, &block); end
  def apply_request(request_env); end
  def body; end
  def env; end
  def finish(env); end
  def finished?; end
  def headers; end
  def marshal_dump; end
  def marshal_load(env); end
  def on_complete(&block); end
  def reason_phrase; end
  def status; end
  def success?; end
  def to_hash; end
end

# deprecated alias
Faraday::Response::Mashify = FaradayMiddleware::Mashify

# deprecated alias
Faraday::Response::ParseJson = FaradayMiddleware::ParseJson

# deprecated alias
Faraday::Response::ParseMarshal = FaradayMiddleware::ParseMarshal

# deprecated alias
Faraday::Response::ParseXml = FaradayMiddleware::ParseXml

# deprecated alias
Faraday::Response::ParseYaml = FaradayMiddleware::ParseYaml

# deprecated alias
Faraday::Response::Rashify = FaradayMiddleware::Rashify

Faraday::Timer = Timeout
Faraday::UploadIO = Multipart::Post::UploadIO
Faraday::VERSION = T.let(T.unsafe(nil), String)

# Main FaradayMiddleware module.
module FaradayMiddleware; end

# Public: Caches GET responses and pulls subsequent ones from the cache.
class FaradayMiddleware::Caching < ::Faraday::Middleware
  extend ::Forwardable

  # Public: initialize the middleware.
  #
  # cache   - An object that responds to read and write (default: nil).
  # options - An options Hash (default: {}):
  #           :ignore_params - String name or Array names of query
  #                                    params that should be ignored when forming
  #                                    the cache key (default: []).
  #           :write_options - Hash of settings that should be passed as the
  #                                    third options parameter to the cache's #write
  #                                    method. If not specified, no options parameter
  #                                    will be passed.
  #           :full_key      - Boolean - use full URL as cache key:
  #                                    (url.host + url.request_uri)
  #           :status_codes  - Array of http status code to be cache
  #                                    (default: CACHEABLE_STATUS_CODE)
  #
  # Yields if no cache is given. The block should return a cache object.
  #
  # @return [Caching] a new instance of Caching
  def initialize(app, cache = T.unsafe(nil), options = T.unsafe(nil)); end

  def build_query(*args, **_arg1, &block); end

  # Returns the value of attribute cache.
  def cache; end

  def cache_key(env); end
  def cache_on_complete(env); end
  def call(env); end
  def custom_status_codes; end
  def finalize_response(response, env); end

  # @return [Boolean]
  def full_key?; end

  def params_to_ignore; end
  def parse_query(*args, **_arg1, &block); end
  def store_response_in_cache(key, response); end
end

# Internal: List of status codes that can be cached:
# * 200 - 'OK'
# * 203 - 'Non-Authoritative Information'
# * 300 - 'Multiple Choices'
# * 301 - 'Moved Permanently'
# * 302 - 'Found'
# * 404 - 'Not Found'
# * 410 - 'Gone'
FaradayMiddleware::Caching::CACHEABLE_STATUS_CODES = T.let(T.unsafe(nil), Array)

# Public: Parse a Transfer-Encoding. Chunks response to just the original data
class FaradayMiddleware::Chunked < ::FaradayMiddleware::ResponseMiddleware
  # @return [Boolean]
  def chunked_encoding?(headers); end

  # @return [Boolean]
  def parse_response?(env); end
end

FaradayMiddleware::Chunked::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

# Request middleware that encodes the body as JSON.
#
# Processes only requests with matching Content-type or those without a type.
# If a request doesn't have a type but has a body, it sets the Content-type
# to JSON MIME-type.
#
# Doesn't try to encode bodies that already are in string form.
class FaradayMiddleware::EncodeJson < ::Faraday::Middleware
  def call(env); end
  def encode(data); end

  # @return [Boolean]
  def has_body?(env); end

  # @yield []
  def match_content_type(env); end

  # @return [Boolean]
  def process_request?(env); end

  def request_type(env); end
end

FaradayMiddleware::EncodeJson::CONTENT_TYPE = T.let(T.unsafe(nil), String)
FaradayMiddleware::EncodeJson::MIME_TYPE = T.let(T.unsafe(nil), String)
FaradayMiddleware::EncodeJson::MIME_TYPE_REGEX = T.let(T.unsafe(nil), Regexp)

# Public: Follow HTTP 301, 302, 303, 307, and 308 redirects.
#
# For HTTP 301, 302, and 303, the original GET, POST, PUT, DELETE, or PATCH
# request gets converted into a GET. With `:standards_compliant => true`,
# however, the HTTP method after 301/302 remains unchanged. This allows you
# to opt into HTTP/1.1 compliance and act unlike the major web browsers.
#
# This middleware currently only works with synchronous requests; i.e. it
# doesn't support parallelism.
#
# If you wish to persist cookies across redirects, you could use
# the faraday-cookie_jar gem:
#
#   Faraday.new(:url => url) do |faraday|
#     faraday.use FaradayMiddleware::FollowRedirects
#     faraday.use :cookie_jar
#     faraday.adapter Faraday.default_adapter
#   end
class FaradayMiddleware::FollowRedirects < ::Faraday::Middleware
  # Public: Initialize the middleware.
  #
  # options - An options Hash (default: {}):
  #     :limit                      - A Numeric redirect limit (default: 3)
  #     :standards_compliant        - A Boolean indicating whether to respect
  #                                  the HTTP spec when following 301/302
  #                                  (default: false)
  #     :callback                   - A callable used on redirects
  #                                  with the old and new envs
  #     :cookies                    - An Array of Strings (e.g.
  #                                  ['cookie1', 'cookie2']) to choose
  #                                  cookies to be kept, or :all to keep
  #                                  all cookies (default: []).
  #     :clear_authorization_header - A Boolean indicating whether the request
  #                                  Authorization header should be cleared on
  #                                  redirects (default: true)
  #
  # @return [FollowRedirects] a new instance of FollowRedirects
  def initialize(app, options = T.unsafe(nil)); end

  def call(env); end

  private

  def callback; end
  def clear_authorization_header(env, from_url, to_url); end

  # @return [Boolean]
  def convert_to_get?(response); end

  def follow_limit; end

  # @return [Boolean]
  def follow_redirect?(env, response); end

  def perform_with_redirection(env, follows); end

  # @return [Boolean]
  def redirect_to_same_host?(from_url, to_url); end

  # Internal: escapes unsafe characters from an URL which might be a path
  # component only or a fully qualified URI so that it can be joined onto an
  # URI:HTTP using the `+` operator. Doesn't escape "%" characters so to not
  # risk double-escaping.
  def safe_escape(uri); end

  # @return [Boolean]
  def standards_compliant?; end

  def update_env(env, request_body, response); end
end

# HTTP methods for which 30x redirects can be followed
FaradayMiddleware::FollowRedirects::ALLOWED_METHODS = T.let(T.unsafe(nil), Set)

FaradayMiddleware::FollowRedirects::AUTH_HEADER = T.let(T.unsafe(nil), String)

# Keys in env hash which will get cleared between requests
FaradayMiddleware::FollowRedirects::ENV_TO_CLEAR = T.let(T.unsafe(nil), Set)

# Default value for max redirects followed
FaradayMiddleware::FollowRedirects::FOLLOW_LIMIT = T.let(T.unsafe(nil), Integer)

# HTTP redirect status codes that this middleware implements
FaradayMiddleware::FollowRedirects::REDIRECT_CODES = T.let(T.unsafe(nil), Set)

# Regex that matches characters that need to be escaped in URLs, sans
# the "%" character which we assume already represents an escaped sequence.
FaradayMiddleware::FollowRedirects::URI_UNSAFE = T.let(T.unsafe(nil), Regexp)

# Middleware to automatically decompress response bodies. If the
# "Accept-Encoding" header wasn't set in the request, this sets it to
# "gzip,deflate" and appropriately handles the compressed response from the
# server. This resembles what Ruby 1.9+ does internally in Net::HTTP#get.
#
# This middleware is NOT necessary when these adapters are used:
# - net_http on Ruby 1.9+
# - net_http_persistent on Ruby 2.0+
# - em_http
class FaradayMiddleware::Gzip < ::Faraday::Middleware
  def brotli_inflate(body); end
  def call(env); end
  def inflate(body); end
  def raw_body(body); end
  def reset_body(env); end
  def uncompress_gzip(body); end

  class << self
    def optional_dependency(lib = T.unsafe(nil)); end
    def supported_encodings; end
  end
end

FaradayMiddleware::Gzip::ACCEPT_ENCODING = T.let(T.unsafe(nil), String)
FaradayMiddleware::Gzip::CONTENT_ENCODING = T.let(T.unsafe(nil), String)
FaradayMiddleware::Gzip::CONTENT_LENGTH = T.let(T.unsafe(nil), String)
FaradayMiddleware::Gzip::SUPPORTED_ENCODINGS = T.let(T.unsafe(nil), String)

# Public: Instruments requests using Active Support.
#
# Measures time spent only for synchronous requests.
#
# Examples
#
#   ActiveSupport::Notifications.
#     subscribe('request.faraday') do |name, starts, ends, _, env|
#     url = env[:url]
#     http_method = env[:method].to_s.upcase
#     duration = ends - starts
#     $stderr.puts '[%s] %s %s (%.3f s)' % [url.host,
#                                           http_method,
#                                           url.request_uri,
#                                           duration]
#   end
class FaradayMiddleware::Instrumentation < ::Faraday::Middleware
  # @return [Instrumentation] a new instance of Instrumentation
  def initialize(app, options = T.unsafe(nil)); end

  def call(env); end
end

# Public: Converts parsed response bodies to a Hashie::Mash if they were of
# Hash or Array type.
class FaradayMiddleware::Mashify < ::Faraday::Response::Middleware
  # @return [Mashify] a new instance of Mashify
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  # Returns the value of attribute mash_class.
  def mash_class; end

  # Sets the attribute mash_class
  #
  # @param value the value to set the attribute mash_class to.
  def mash_class=(_arg0); end

  def parse(body); end

  class << self
    # Returns the value of attribute mash_class.
    def mash_class; end

    # Sets the attribute mash_class
    #
    # @param value the value to set the attribute mash_class to.
    def mash_class=(_arg0); end
  end
end

# Public: Writes the original HTTP method to "X-Http-Method-Override" header
# and sends the request as POST.
#
# This can be used to work around technical issues with making non-POST
# requests, e.g. faulty HTTP client or server router.
#
# This header is recognized in Rack apps by default, courtesy of the
# Rack::MethodOverride module. See
# http://rack.rubyforge.org/doc/classes/Rack/MethodOverride.html
class FaradayMiddleware::MethodOverride < ::Faraday::Middleware
  # Public: Initialize the middleware.
  #
  # app     - the Faraday app to wrap
  # options - (optional)
  #           :rewrite - Array of HTTP methods to rewrite
  #                      (default: all but GET and POST)
  #
  # @return [MethodOverride] a new instance of MethodOverride
  def initialize(app, options = T.unsafe(nil)); end

  def call(env); end

  # Internal: Write the original HTTP method to header, change method to POST.
  def rewrite_request(env, original_method); end

  # @return [Boolean]
  def rewrite_request?(method); end
end

FaradayMiddleware::MethodOverride::HEADER = T.let(T.unsafe(nil), String)

# Public: Uses the simple_oauth library to sign requests according the
# OAuth protocol.
#
# The options for this middleware are forwarded to SimpleOAuth::Header:
# :consumer_key, :consumer_secret, :token, :token_secret. All these
# parameters are optional.
#
# The signature is added to the "Authorization" HTTP request header. If the
# value for this header already exists, it is not overriden.
#
# If no Content-Type header is specified, this middleware assumes that
# request body parameters should be included while signing the request.
# Otherwise, it only includes them if the Content-Type is
# "application/x-www-form-urlencoded", as per OAuth 1.0.
#
# For better performance while signing requests, this middleware should be
# positioned before UrlEncoded middleware on the stack, but after any other
# body-encoding middleware (such as EncodeJson).
class FaradayMiddleware::OAuth < ::Faraday::Middleware
  extend ::Forwardable

  # @return [OAuth] a new instance of OAuth
  def initialize(app, options); end

  def body_params(env); end
  def call(env); end

  # @return [Boolean]
  def include_body_params?(env); end

  def oauth_header(env); end
  def oauth_options(env); end
  def parse_nested_query(*args, **_arg1, &block); end

  # @return [Boolean]
  def sign_request?(env); end

  def signature_params(params); end
end

# Public: A simple middleware that adds an access token to each request.
#
# By default, the token is added as both "access_token" query parameter
# and the "Authorization" HTTP request header. It can alternatively be
# added exclusively as a bearer token "Authorization" header by specifying
# a "token_type" option of "bearer". However, an explicit "access_token"
# parameter or "Authorization" header for the current request are not
# overriden.
#
# Examples
#
#   # configure default token:
#   OAuth2.new(app, 'abc123')
#
#   # configure query parameter name:
#   OAuth2.new(app, 'abc123', :param_name => 'my_oauth_token')
#
#   # use bearer token authorization header only
#   OAuth2.new(app, 'abc123', :token_type => 'bearer')
#
#   # default token value is optional:
#   OAuth2.new(app, :param_name => 'my_oauth_token')
class FaradayMiddleware::OAuth2 < ::Faraday::Middleware
  extend ::Forwardable

  # @raise [ArgumentError]
  # @return [OAuth2] a new instance of OAuth2
  def initialize(app, token = T.unsafe(nil), options = T.unsafe(nil)); end

  def build_query(*args, **_arg1, &block); end
  def call(env); end

  # Returns the value of attribute param_name.
  def param_name; end

  def parse_query(*args, **_arg1, &block); end
  def query_params(url); end

  # Returns the value of attribute token_type.
  def token_type; end
end

FaradayMiddleware::OAuth2::AUTH_HEADER = T.let(T.unsafe(nil), String)
FaradayMiddleware::OAuth2::PARAM_NAME = T.let(T.unsafe(nil), String)
FaradayMiddleware::OAuth2::TOKEN_TYPE = T.let(T.unsafe(nil), String)
FaradayMiddleware::OAuth::AUTH_HEADER = T.let(T.unsafe(nil), String)
FaradayMiddleware::OAuth::CONTENT_TYPE = T.let(T.unsafe(nil), String)
FaradayMiddleware::OAuth::TYPE_URLENCODED = T.let(T.unsafe(nil), String)

# DRAGONS
module FaradayMiddleware::OptionsExtension
  # @yield [:preserve_raw, preserve_raw]
  def each; end

  def fetch(key, *args); end

  # Returns the value of attribute preserve_raw.
  def preserve_raw; end

  # Sets the attribute preserve_raw
  #
  # @param value the value to set the attribute preserve_raw to.
  def preserve_raw=(_arg0); end

  def to_hash; end
end

# Parse dates from response body
class FaradayMiddleware::ParseDates < ::Faraday::Response::Middleware
  # @return [ParseDates] a new instance of ParseDates
  def initialize(app, options = T.unsafe(nil)); end

  def call(env); end

  private

  def parse_dates!(value); end
end

FaradayMiddleware::ParseDates::ISO_DATE_FORMAT = T.let(T.unsafe(nil), Regexp)

# Public: Parse response bodies as JSON.
class FaradayMiddleware::ParseJson < ::FaradayMiddleware::ResponseMiddleware; end

# Public: Override the content-type of the response with "application/json"
# if the response body looks like it might be JSON, i.e. starts with an
# open bracket.
#
# This is to fix responses from certain API providers that insist on serving
# JSON with wrong MIME-types such as "text/javascript".
class FaradayMiddleware::ParseJson::MimeTypeFix < ::FaradayMiddleware::ResponseMiddleware
  def first_char(body); end

  # @return [Boolean]
  def parse_response?(env); end

  def process_response(env); end
end

FaradayMiddleware::ParseJson::MimeTypeFix::BRACKETS = T.let(T.unsafe(nil), Array)
FaradayMiddleware::ParseJson::MimeTypeFix::MIME_TYPE = T.let(T.unsafe(nil), String)
FaradayMiddleware::ParseJson::MimeTypeFix::WHITESPACE = T.let(T.unsafe(nil), Array)

# Public: Restore marshalled Ruby objects in response bodies.
class FaradayMiddleware::ParseMarshal < ::FaradayMiddleware::ResponseMiddleware; end

# Public: parses response bodies with MultiXml.
class FaradayMiddleware::ParseXml < ::FaradayMiddleware::ResponseMiddleware; end

# Public: Parse response bodies as YAML.
#
# Warning: This is not backwards compatible with versions of this middleware
# prior to faraday_middleware v0.12 - prior to this version, we used
# YAML.load rather than YAMl.safe_load, which exposes serious remote code
# execution risks - see https://github.com/ruby/psych/issues/119 for details.
# If you're sure you can trust YAML you're passing, you can set up an unsafe
# version of this middleware like this:
#
#     class UnsafelyParseYaml < FaradayMiddleware::ResponseMiddleware
#       dependency do
#         require 'yaml'
#       end
#
#       define_parser do |body|
#         YAML.load body
#       end
#     end
#
#     Faraday.new(..) do |config|
#       config.use UnsafelyParseYaml
#       ...
#     end
class FaradayMiddleware::ParseYaml < ::FaradayMiddleware::ResponseMiddleware; end

# Wraps a handler originally written for Rack for Faraday compatibility.
#
# Experimental. Only handles changes in request headers.
class FaradayMiddleware::RackCompatible
  # @return [RackCompatible] a new instance of RackCompatible
  def initialize(app, rack_handler, *args); end

  def call(env); end
  def finalize_response(env, rack_response); end
  def headers_to_rack(env); end

  # faraday to rack-compatible
  def prepare_env(faraday_env); end

  # rack to faraday-compatible
  def restore_env(rack_env); end
end

FaradayMiddleware::RackCompatible::NON_PREFIXED_HEADERS = T.let(T.unsafe(nil), Array)

# Public: Converts parsed response bodies to a Hashie::Rash if they were of
# Hash or Array type.
class FaradayMiddleware::Rashify < ::FaradayMiddleware::Mashify; end

# Exception thrown when the maximum amount of requests is
# exceeded.
class FaradayMiddleware::RedirectLimitReached < ::Faraday::ClientError
  # @return [RedirectLimitReached] a new instance of RedirectLimitReached
  def initialize(response); end

  # Returns the value of attribute response.
  def response; end
end

# Internal: The base class for middleware that parses responses.
class FaradayMiddleware::ResponseMiddleware < ::Faraday::Middleware
  # @return [ResponseMiddleware] a new instance of ResponseMiddleware
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  def call(environment); end

  # Parse the response body.
  #
  # Instead of overriding this method, consider using `define_parser`.
  def parse(body); end

  # @return [Boolean]
  def parse_response?(env); end

  # @return [Boolean]
  def preserve_raw?(env); end

  def process_response(env); end

  # @return [Boolean]
  def process_response_type?(type); end

  def response_type(env); end

  class << self
    # Store a Proc that receives the body and returns the parsed result.
    def define_parser(parser = T.unsafe(nil), &block); end

    # @private
    def inherited(subclass); end

    # Returns the value of attribute parser.
    def parser; end

    # Sets the attribute parser
    #
    # @param value the value to set the attribute parser to.
    def parser=(_arg0); end
  end
end

FaradayMiddleware::ResponseMiddleware::CONTENT_TYPE = T.let(T.unsafe(nil), String)
