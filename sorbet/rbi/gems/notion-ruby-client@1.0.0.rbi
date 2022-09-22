# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `notion-ruby-client` gem.
# Please instead update this file by running `bin/tapioca gem notion-ruby-client`.

# source://notion-ruby-client//lib/notion/version.rb#2
module Notion
  class << self
    # source://notion-ruby-client//lib/notion/config.rb#48
    def config; end

    # source://notion-ruby-client//lib/notion/config.rb#44
    def configure; end
  end
end

# source://notion-ruby-client//lib/notion/api/errors/notion_error.rb#3
module Notion::Api; end

# source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#5
module Notion::Api::Endpoints
  include ::Notion::Api::Endpoints::Blocks
  include ::Notion::Api::Endpoints::Databases
  include ::Notion::Api::Endpoints::Pages
  include ::Notion::Api::Endpoints::Users
  include ::Notion::Api::Endpoints::Search
end

# source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#6
module Notion::Api::Endpoints::Blocks
  # Retrieves a Block object using the ID specified.
  #
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#12
  def block(options = T.unsafe(nil)); end

  # Creates and appends new children blocks to the parent block
  # in the requested path using the ID specified. Returns the Block
  # object being appended to.
  #
  # Returns a 404 HTTP response if any of the following are true:
  # - the ID does not exist
  # - the bot doesn't have access to the block with the given ID
  #
  # Returns a 400 or 429 HTTP response if the request exceeds Notion's Request limits.
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#90
  def block_append_children(options = T.unsafe(nil)); end

  # Returns a paginated array of Block objects contained in the
  # block of the requested path using the ID specified.
  #
  # Returns a 404 HTTP response if any of the following are true:
  # - the ID does not exist
  # - the bot doesn't have access to the block with the given ID
  #
  # Returns a 400 or 429 HTTP response if the request exceeds Notion's Request limits.
  #
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#63
  def block_children(options = T.unsafe(nil)); end

  # Sets a Block object, including page blocks, to archived: true
  # using the ID specified. Note: in the Notion UI application, this
  # moves the block to the "Trash" where it can still be accessed and
  # restored.
  #
  # To restore the block with the API, use the Update a block or
  # Update page respectively.
  #
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#46
  def delete_block(options = T.unsafe(nil)); end

  # Updates the content for the specified block_id based on
  # the block type. Supported fields based on the block object
  # type (see Block object for available fields and the
  # expected input for each field).
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/blocks.rb#30
  def update_block(options = T.unsafe(nil)); end
end

# source://notion-ruby-client//lib/notion/api/endpoints/databases.rb#6
module Notion::Api::Endpoints::Databases
  # Creates a new database in the specified page.
  #
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/databases.rb#62
  def create_database(options = T.unsafe(nil)); end

  # Retrieves a Database object using the ID specified in the request.
  #
  # Returns a 404 HTTP response if the database doesn't exist, or if the bot
  # doesn't have access to the database. Returns a 429 HTTP response if the
  # request exceeds Notion's Request limits.
  #
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/databases.rb#100
  def database(options = T.unsafe(nil)); end

  # Gets a paginated array of Page object s contained in the requested database,
  # filtered and ordered according to the filter and sort objects provided in the request.
  #
  # Filters are similar to the filters provided in the Notion UI. Filters operate
  # on database properties and can be combined. If no filter is provided, all the
  # pages in the database will be returned with pagination.
  #
  # Sorts are similar to the sorts provided in the Notion UI. Sorts operate on
  # database properties and can be combined. The order of the sorts in the request
  # matter, with earlier sorts taking precedence over later ones.
  #
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/databases.rb#36
  def database_query(options = T.unsafe(nil)); end

  # Updates an existing database as specified by the parameters.
  #
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/databases.rb#86
  def update_database(options = T.unsafe(nil)); end
end

# source://notion-ruby-client//lib/notion/api/endpoints/pages.rb#6
module Notion::Api::Endpoints::Pages
  # Creates a new page in the specified database.
  # Later iterations of the API will support creating pages outside databases.
  # Note that this iteration of the API will only expose page properties, not
  # page content, as described in the data model.
  #
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/pages.rb#40
  def create_page(options = T.unsafe(nil)); end

  # Retrieves a 📄Page object  using the ID specified in the request path.
  # Note that this version of the API only exposes page properties, not page content
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/pages.rb#17
  def page(options = T.unsafe(nil)); end

  # Retrieves a `property_item` object for a given `page_id` and `property_id`.
  # Depending on the property type, the object returned will either be a value
  # or a paginated list of property item values.
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/pages.rb#78
  def page_property_item(options = T.unsafe(nil)); end

  # Updates a page by setting the values of any properties specified in the
  # JSON body of the request. Properties that are not set via parameters will
  # remain unchanged.
  #
  # Note that this iteration of the API will only expose page properties, not page
  # content, as described in the data model.
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/pages.rb#62
  def update_page(options = T.unsafe(nil)); end
end

# source://notion-ruby-client//lib/notion/api/endpoints/search.rb#6
module Notion::Api::Endpoints::Search
  # Searches all pages and child pages that are shared with the integration.
  # The results may include databases.
  #
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/search.rb#29
  def search(options = T.unsafe(nil)); end
end

# source://notion-ruby-client//lib/notion/api/endpoints/users.rb#6
module Notion::Api::Endpoints::Users
  # Retrieves the bot User associated with the API token provided in
  # the authorization header. The bot will have an `owner` field with
  # information about the person who authorized the integration.
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/users.rb#11
  def me; end

  # Retrieves a User object using the ID specified in the request.
  #
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/users.rb#20
  def user(options = T.unsafe(nil)); end

  # Returns a paginated list of User objects for the workspace.
  #
  # Paginate through collections of data by setting the cursor parameter
  # to a start_cursor attribute returned by a previous request's next_cursor.
  # Default value fetches the first "page" of the collection.
  # See pagination for more detail.
  #
  # @option options
  # @option options
  # @param options [Hash] a customizable set of options
  #
  # source://notion-ruby-client//lib/notion/api/endpoints/users.rb#36
  def users_list(options = T.unsafe(nil)); end
end

# source://notion-ruby-client//lib/notion/api/error.rb#4
Notion::Api::Error = Notion::Api::Errors::NotionError

# source://notion-ruby-client//lib/notion/api/errors/notion_error.rb#4
module Notion::Api::Errors; end

# source://notion-ruby-client//lib/notion/api/errors.rb#6
class Notion::Api::Errors::BadRequest < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors.rb#13
Notion::Api::Errors::ERROR_CLASSES = T.let(T.unsafe(nil), Hash)

# source://notion-ruby-client//lib/notion/api/errors.rb#7
class Notion::Api::Errors::Forbidden < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors/internal_error.rb#7
class Notion::Api::Errors::HttpRequestError < ::Notion::Api::Errors::ServerError; end

# source://notion-ruby-client//lib/notion/api/errors.rb#8
class Notion::Api::Errors::InternalError < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors.rb#9
class Notion::Api::Errors::InvalidRequest < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors/notion_error.rb#5
class Notion::Api::Errors::NotionError < ::Faraday::Error
  # @return [NotionError] a new instance of NotionError
  #
  # source://notion-ruby-client//lib/notion/api/errors/notion_error.rb#8
  def initialize(message, details, response = T.unsafe(nil)); end

  # Returns the value of attribute response.
  #
  # source://notion-ruby-client//lib/notion/api/errors/notion_error.rb#6
  def response; end
end

# source://notion-ruby-client//lib/notion/api/errors.rb#10
class Notion::Api::Errors::ObjectNotFound < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors/internal_error.rb#6
class Notion::Api::Errors::ParsingError < ::Notion::Api::Errors::ServerError; end

# source://notion-ruby-client//lib/notion/api/errors/internal_error.rb#5
class Notion::Api::Errors::ServerError < ::Notion::Api::Errors::InternalError; end

# source://notion-ruby-client//lib/notion/api/errors/internal_error.rb#8
class Notion::Api::Errors::TimeoutError < ::Notion::Api::Errors::HttpRequestError; end

# source://notion-ruby-client//lib/notion/api/errors/too_many_requests.rb#5
class Notion::Api::Errors::TooManyRequests < ::Faraday::Error
  # @return [TooManyRequests] a new instance of TooManyRequests
  #
  # source://notion-ruby-client//lib/notion/api/errors/too_many_requests.rb#8
  def initialize(response); end

  # Returns the value of attribute response.
  #
  # source://notion-ruby-client//lib/notion/api/errors/too_many_requests.rb#6
  def response; end
end

# source://notion-ruby-client//lib/notion/api/errors.rb#11
class Notion::Api::Errors::Unauthorized < ::Notion::Api::Errors::NotionError; end

# source://notion-ruby-client//lib/notion/api/errors/internal_error.rb#9
class Notion::Api::Errors::UnavailableError < ::Notion::Api::Errors::HttpRequestError; end

# source://notion-ruby-client//lib/notion/pagination/cursor.rb#4
module Notion::Api::Pagination; end

# source://notion-ruby-client//lib/notion/pagination/cursor.rb#5
class Notion::Api::Pagination::Cursor
  include ::Enumerable

  # @return [Cursor] a new instance of Cursor
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#15
  def initialize(client, verb, params = T.unsafe(nil)); end

  # Returns the value of attribute client.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#8
  def client; end

  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#24
  def each; end

  # Returns the value of attribute max_retries.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#11
  def max_retries; end

  # Returns the value of attribute params.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#13
  def params; end

  # Returns the value of attribute retry_after.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#12
  def retry_after; end

  # Returns the value of attribute sleep_interval.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#10
  def sleep_interval; end

  # Returns the value of attribute verb.
  #
  # source://notion-ruby-client//lib/notion/pagination/cursor.rb#9
  def verb; end
end

# source://notion-ruby-client//lib/notion/client.rb#3
class Notion::Client
  include ::Notion::Faraday::Connection
  include ::Notion::Faraday::Request
  include ::Notion::Api::Endpoints::Blocks
  include ::Notion::Api::Endpoints::Databases
  include ::Notion::Api::Endpoints::Pages
  include ::Notion::Api::Endpoints::Users
  include ::Notion::Api::Endpoints::Search
  include ::Notion::Api::Endpoints

  # @return [Client] a new instance of Client
  #
  # source://notion-ruby-client//lib/notion/client.rb#10
  def initialize(options = T.unsafe(nil)); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def adapter; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def adapter=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def ca_file; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def ca_file=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def ca_path; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def ca_path=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_max_retries; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_max_retries=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_page_size; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_page_size=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_retry_after; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def default_retry_after=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def endpoint; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def endpoint=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def logger; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def logger=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def open_timeout; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def open_timeout=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def proxy; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def proxy=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def timeout; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def timeout=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def token; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def token=(_arg0); end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def user_agent; end

  # source://notion-ruby-client//lib/notion/client.rb#8
  def user_agent=(_arg0); end

  class << self
    # source://notion-ruby-client//lib/notion/client.rb#23
    def config; end

    # source://notion-ruby-client//lib/notion/client.rb#19
    def configure; end
  end
end

# source://notion-ruby-client//lib/notion/config.rb#3
module Notion::Config
  extend ::Notion::Config

  # source://notion-ruby-client//lib/notion/config.rb#22
  def adapter; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def adapter=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def ca_file; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def ca_file=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def ca_path; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def ca_path=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_max_retries; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_max_retries=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_page_size; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_page_size=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_retry_after; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def default_retry_after=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def endpoint; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def endpoint=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def logger; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def logger=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def open_timeout; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def open_timeout=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def proxy; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def proxy=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#24
  def reset; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def timeout; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def timeout=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def token; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def token=(_arg0); end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def user_agent; end

  # source://notion-ruby-client//lib/notion/config.rb#22
  def user_agent=(_arg0); end
end

# source://notion-ruby-client//lib/notion/config.rb#6
Notion::Config::ATTRIBUTES = T.let(T.unsafe(nil), Array)

# source://notion-ruby-client//lib/notion/faraday/response/raise_error.rb#3
module Notion::Faraday; end

# source://notion-ruby-client//lib/notion/faraday/connection.rb#4
module Notion::Faraday::Connection
  private

  # source://notion-ruby-client//lib/notion/faraday/connection.rb#7
  def connection; end
end

# source://notion-ruby-client//lib/notion/faraday/request.rb#4
module Notion::Faraday::Request
  # source://notion-ruby-client//lib/notion/faraday/request.rb#21
  def delete(path, options = T.unsafe(nil)); end

  # source://notion-ruby-client//lib/notion/faraday/request.rb#5
  def get(path, options = T.unsafe(nil)); end

  # source://notion-ruby-client//lib/notion/faraday/request.rb#9
  def patch(path, options = T.unsafe(nil)); end

  # source://notion-ruby-client//lib/notion/faraday/request.rb#13
  def post(path, options = T.unsafe(nil)); end

  # source://notion-ruby-client//lib/notion/faraday/request.rb#17
  def put(path, options = T.unsafe(nil)); end

  private

  # source://notion-ruby-client//lib/notion/faraday/request.rb#27
  def request(method, path, options); end
end

# source://notion-ruby-client//lib/notion/faraday/response/raise_error.rb#4
module Notion::Faraday::Response; end

# source://notion-ruby-client//lib/notion/faraday/response/raise_error.rb#5
class Notion::Faraday::Response::RaiseError < ::Faraday::Response::Middleware
  # source://notion-ruby-client//lib/notion/faraday/response/raise_error.rb#23
  def call(env); end

  # @raise [Notion::Api::Errors::TooManyRequests]
  #
  # source://notion-ruby-client//lib/notion/faraday/response/raise_error.rb#6
  def on_complete(env); end
end

# source://notion-ruby-client//lib/notion/faraday/response/wrap_error.rb#5
class Notion::Faraday::Response::WrapError < ::Faraday::Response::Middleware
  # source://notion-ruby-client//lib/notion/faraday/response/wrap_error.rb#14
  def call(env); end

  # @raise [Notion::Api::Errors::UnavailableError]
  #
  # source://notion-ruby-client//lib/notion/faraday/response/wrap_error.rb#8
  def on_complete(env); end
end

# source://notion-ruby-client//lib/notion/faraday/response/wrap_error.rb#6
Notion::Faraday::Response::WrapError::UNAVAILABLE_ERROR_STATUSES = T.let(T.unsafe(nil), Range)

# source://notion-ruby-client//lib/notion/logger.rb#5
class Notion::Logger < ::Logger
  class << self
    # source://notion-ruby-client//lib/notion/logger.rb#6
    def default; end
  end
end

# source://notion-ruby-client//lib/notion/messages/message.rb#3
module Notion::Messages; end

# source://notion-ruby-client//lib/notion/messages/message.rb#4
class Notion::Messages::Message < ::Hashie::Mash
  # source://notion-ruby-client//lib/notion/messages/message.rb#5
  def to_s; end

  private

  # see https://github.com/intridea/hashie/issues/394
  #
  # source://notion-ruby-client//lib/notion/messages/message.rb#14
  def log_built_in_message(*_arg0); end
end

# source://notion-ruby-client//lib/notion/version.rb#4
Notion::NOTION_REQUEST_VERSION = T.let(T.unsafe(nil), String)

# source://notion-ruby-client//lib/notion/version.rb#3
Notion::VERSION = T.let(T.unsafe(nil), String)
