# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `shakapacker` gem.
# Please instead update this file by running `bin/tapioca gem shakapacker`.

# source://shakapacker//lib/webpacker.rb#6
module Webpacker
  extend ::Webpacker

  # source://shakapacker//lib/webpacker.rb#35
  def bootstrap(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#35
  def clean(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#35
  def clobber(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#34
  def commands(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#35
  def compile(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#34
  def compiler(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#34
  def config(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#34
  def dev_server(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#25
  def ensure_log_goes_to_stdout; end

  # source://shakapacker//lib/webpacker.rb#33
  def env(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#33
  def inlining_css?(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#13
  def instance; end

  # source://shakapacker//lib/webpacker.rb#9
  def instance=(instance); end

  # source://shakapacker//lib/webpacker.rb#33
  def logger(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#33
  def logger=(arg); end

  # source://shakapacker//lib/webpacker.rb#34
  def manifest(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker.rb#17
  def with_node_env(env); end
end

# source://shakapacker//lib/webpacker/base_strategy.rb#2
class Webpacker::BaseStrategy
  # @return [BaseStrategy] a new instance of BaseStrategy
  #
  # source://shakapacker//lib/webpacker/base_strategy.rb#3
  def initialize; end

  # source://shakapacker//lib/webpacker/base_strategy.rb#7
  def after_compile_hook; end

  private

  # Returns the value of attribute config.
  #
  # source://shakapacker//lib/webpacker/base_strategy.rb#13
  def config; end

  # source://shakapacker//lib/webpacker/base_strategy.rb#15
  def default_watched_paths; end
end

# source://shakapacker//lib/webpacker/commands.rb#1
class Webpacker::Commands
  # @return [Commands] a new instance of Commands
  #
  # source://shakapacker//lib/webpacker/commands.rb#4
  def initialize(webpacker); end

  # source://shakapacker//lib/webpacker/commands.rb#47
  def bootstrap; end

  # Cleanup old assets in the compile directory. By default it will
  # keep the latest version, 2 backups created within the past hour.
  #
  # Examples
  #
  #   To force only 1 backup to be kept, set count=1 and age=0.
  #
  #   To only keep files created within the last 10 minutes, set count=0 and
  #   age=600.
  #
  # source://shakapacker//lib/webpacker/commands.rb#18
  def clean(count = T.unsafe(nil), age = T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/commands.rb#42
  def clobber; end

  # source://shakapacker//lib/webpacker/commands.rb#51
  def compile; end

  # source://shakapacker//lib/webpacker/commands.rb#2
  def compiler(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/commands.rb#2
  def config(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/commands.rb#2
  def logger(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/commands.rb#2
  def manifest(*_arg0, **_arg1, &_arg2); end

  private

  # source://shakapacker//lib/webpacker/commands.rb#69
  def current_version; end

  # source://shakapacker//lib/webpacker/commands.rb#58
  def packs; end
end

# source://shakapacker//lib/webpacker/compiler.rb#4
class Webpacker::Compiler
  # @return [Compiler] a new instance of Compiler
  #
  # source://shakapacker//lib/webpacker/compiler.rb#12
  def initialize(webpacker); end

  # source://shakapacker//lib/webpacker/compiler.rb#10
  def after_compile_hook(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/compiler.rb#16
  def compile; end

  # source://shakapacker//lib/webpacker/compiler.rb#9
  def config(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/compiler.rb#7
  def env; end

  # source://shakapacker//lib/webpacker/compiler.rb#7
  def env=(val); end

  # source://shakapacker//lib/webpacker/compiler.rb#10
  def fresh?(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/compiler.rb#9
  def logger(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/compiler.rb#10
  def stale?(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/compiler.rb#9
  def strategy(*_arg0, **_arg1, &_arg2); end

  private

  # source://shakapacker//lib/webpacker/compiler.rb#37
  def acquire_ipc_lock; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/compiler.rb#44
  def compiling?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/compiler.rb#44
  def locked?; end

  # source://shakapacker//lib/webpacker/compiler.rb#57
  def open_lock_file; end

  # source://shakapacker//lib/webpacker/compiler.rb#64
  def optionalRubyRunner; end

  # source://shakapacker//lib/webpacker/compiler.rb#70
  def run_webpack; end

  # source://shakapacker//lib/webpacker/compiler.rb#52
  def wait_for_compilation_to_complete; end

  # source://shakapacker//lib/webpacker/compiler.rb#94
  def webpack_env; end

  # Returns the value of attribute webpacker.
  #
  # source://shakapacker//lib/webpacker/compiler.rb#35
  def webpacker; end

  class << self
    # source://shakapacker//lib/webpacker/compiler.rb#7
    def env; end

    # source://shakapacker//lib/webpacker/compiler.rb#7
    def env=(val); end
  end
end

# source://shakapacker//lib/webpacker/compiler_strategy.rb#5
class Webpacker::CompilerStrategy
  class << self
    # source://shakapacker//lib/webpacker/compiler_strategy.rb#6
    def from_config; end
  end
end

# source://shakapacker//lib/webpacker/configuration.rb#5
class Webpacker::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://shakapacker//lib/webpacker/configuration.rb#12
  def initialize(root_path:, config_path:, env:); end

  # source://shakapacker//lib/webpacker/configuration.rb#43
  def additional_paths; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/configuration.rb#71
  def cache_manifest?; end

  # source://shakapacker//lib/webpacker/configuration.rb#75
  def cache_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#79
  def check_yarn_integrity=(value); end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/configuration.rb#22
  def compile?; end

  # source://shakapacker//lib/webpacker/configuration.rb#91
  def compiler_strategy; end

  # Returns the value of attribute config_path.
  #
  # source://shakapacker//lib/webpacker/configuration.rb#10
  def config_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#18
  def dev_server; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/configuration.rb#26
  def ensure_consistent_versioning?; end

  # Returns the value of attribute env.
  #
  # source://shakapacker//lib/webpacker/configuration.rb#10
  def env; end

  # source://shakapacker//lib/webpacker/configuration.rb#95
  def fetch(key); end

  # source://shakapacker//lib/webpacker/configuration.rb#51
  def manifest_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#59
  def public_manifest_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#67
  def public_output_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#63
  def public_path; end

  # Returns the value of attribute root_path.
  #
  # source://shakapacker//lib/webpacker/configuration.rb#10
  def root_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#47
  def source_entry_path; end

  # source://shakapacker//lib/webpacker/configuration.rb#39
  def source_path; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/configuration.rb#87
  def webpack_compile_output?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/configuration.rb#30
  def webpacker_precompile?; end

  private

  # source://shakapacker//lib/webpacker/configuration.rb#100
  def data; end

  # source://shakapacker//lib/webpacker/configuration.rb#125
  def defaults; end

  # source://shakapacker//lib/webpacker/configuration.rb#104
  def load; end

  class << self
    # Returns the value of attribute installing.
    #
    # source://shakapacker//lib/webpacker/configuration.rb#7
    def installing; end

    # Sets the attribute installing
    #
    # @param value the value to set the attribute installing to.
    #
    # source://shakapacker//lib/webpacker/configuration.rb#7
    def installing=(_arg0); end
  end
end

# source://shakapacker//lib/webpacker/dev_server.rb#1
class Webpacker::DevServer
  # @return [DevServer] a new instance of DevServer
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#10
  def initialize(config); end

  # Returns the value of attribute config.
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#8
  def config; end

  # source://shakapacker//lib/webpacker/dev_server.rb#6
  def connect_timeout; end

  # source://shakapacker//lib/webpacker/dev_server.rb#6
  def connect_timeout=(val); end

  # source://shakapacker//lib/webpacker/dev_server.rb#67
  def env_prefix; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#54
  def hmr?; end

  # source://shakapacker//lib/webpacker/dev_server.rb#25
  def host; end

  # source://shakapacker//lib/webpacker/dev_server.rb#46
  def host_with_port; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#33
  def https?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#58
  def inline_css?; end

  # source://shakapacker//lib/webpacker/dev_server.rb#29
  def port; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#50
  def pretty?; end

  # source://shakapacker//lib/webpacker/dev_server.rb#42
  def protocol; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/dev_server.rb#14
  def running?; end

  private

  # source://shakapacker//lib/webpacker/dev_server.rb#78
  def defaults; end

  # source://shakapacker//lib/webpacker/dev_server.rb#72
  def fetch(key); end

  class << self
    # source://shakapacker//lib/webpacker/dev_server.rb#6
    def connect_timeout; end

    # source://shakapacker//lib/webpacker/dev_server.rb#6
    def connect_timeout=(val); end
  end
end

# source://shakapacker//lib/webpacker/dev_server.rb#2
Webpacker::DevServer::DEFAULT_ENV_PREFIX = T.let(T.unsafe(nil), String)

# source://shakapacker//lib/webpacker/dev_server_proxy.rb#3
class Webpacker::DevServerProxy < ::Rack::Proxy
  # @return [DevServerProxy] a new instance of DevServerProxy
  #
  # source://shakapacker//lib/webpacker/dev_server_proxy.rb#6
  def initialize(app = T.unsafe(nil), opts = T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/dev_server_proxy.rb#4
  def config(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/dev_server_proxy.rb#4
  def dev_server(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/dev_server_proxy.rb#12
  def perform_request(env); end

  private

  # source://shakapacker//lib/webpacker/dev_server_proxy.rb#30
  def public_output_uri_path; end
end

# source://shakapacker//lib/webpacker/digest_strategy.rb#6
class Webpacker::DigestStrategy < ::Webpacker::BaseStrategy
  # source://shakapacker//lib/webpacker/digest_strategy.rb#16
  def after_compile_hook; end

  # Returns true if all the compiled packs are up to date with the underlying asset files.
  #
  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/digest_strategy.rb#7
  def fresh?; end

  # Returns true if the compiled packs are out of date with the underlying asset files.
  #
  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/digest_strategy.rb#12
  def stale?; end

  private

  # source://shakapacker//lib/webpacker/digest_strategy.rb#55
  def compilation_digest_path; end

  # source://shakapacker//lib/webpacker/digest_strategy.rb#26
  def last_compilation_digest; end

  # source://shakapacker//lib/webpacker/digest_strategy.rb#50
  def record_compilation_digest; end

  # source://shakapacker//lib/webpacker/digest_strategy.rb#31
  def watched_files_digest; end
end

# source://shakapacker//lib/webpacker/railtie.rb#8
class Webpacker::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.0.4/lib/active_support/callbacks.rb#68
    def __callbacks; end
  end
end

# source://shakapacker//lib/webpacker/env.rb#1
class Webpacker::Env
  # @return [Env] a new instance of Env
  #
  # source://shakapacker//lib/webpacker/env.rb#10
  def initialize(webpacker); end

  # source://shakapacker//lib/webpacker/env.rb#4
  def config_path(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/env.rb#14
  def inquire; end

  # source://shakapacker//lib/webpacker/env.rb#4
  def logger(*_arg0, **_arg1, &_arg2); end

  private

  # source://shakapacker//lib/webpacker/env.rb#28
  def available_environments; end

  # source://shakapacker//lib/webpacker/env.rb#20
  def current; end

  # source://shakapacker//lib/webpacker/env.rb#24
  def fallback_env_warning; end

  class << self
    # source://shakapacker//lib/webpacker/env.rb#6
    def inquire(webpacker); end
  end
end

# source://shakapacker//lib/webpacker/env.rb#2
Webpacker::Env::DEFAULT = T.let(T.unsafe(nil), String)

# source://shakapacker//lib/webpacker/helper.rb#1
module Webpacker::Helper
  # source://shakapacker//lib/webpacker/helper.rb#179
  def append_javascript_pack_tag(*names, defer: T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/helper.rb#169
  def append_stylesheet_pack_tag(*names); end

  # Computes the relative path for a given Webpacker asset.
  # Returns the relative path using manifest.json and passes it to path_to_asset helper.
  # This will use path_to_asset internally, so most of their behaviors will be the same.
  #
  # Example:
  #
  #   <%= asset_pack_path 'calendar.css' %> # => "/packs/calendar-1016838bab065ae1e122.css"
  #
  # source://shakapacker//lib/webpacker/helper.rb#16
  def asset_pack_path(name, **options); end

  # Computes the absolute path for a given Webpacker asset.
  # Returns the absolute path using manifest.json and passes it to url_to_asset helper.
  # This will use url_to_asset internally, so most of their behaviors will be the same.
  #
  # Example:
  #
  #   <%= asset_pack_url 'calendar.css' %> # => "http://example.com/packs/calendar-1016838bab065ae1e122.css"
  #
  # source://shakapacker//lib/webpacker/helper.rb#27
  def asset_pack_url(name, **options); end

  # Returns the current Webpacker instance.
  # Could be overridden to use multiple Webpacker
  # configurations within the same app (e.g. with engines).
  #
  # source://shakapacker//lib/webpacker/helper.rb#5
  def current_webpacker_instance; end

  # Creates a link tag for a favicon that references the named pack file.
  #
  # Example:
  #
  #  <%= favicon_pack_tag 'mb-icon.png', rel: 'apple-touch-icon', type: 'image/png' %>
  #  <link href="/packs/mb-icon-k344a6d59eef8632c9d1.png" rel="apple-touch-icon" type="image/png" />
  #
  # source://shakapacker//lib/webpacker/helper.rb#71
  def favicon_pack_tag(name, **options); end

  # Computes the relative path for a given Webpacker image with the same automated processing as image_pack_tag.
  # Returns the relative path using manifest.json and passes it to path_to_asset helper.
  # This will use path_to_asset internally, so most of their behaviors will be the same.
  #
  # source://shakapacker//lib/webpacker/helper.rb#34
  def image_pack_path(name, **options); end

  # Creates an image tag that references the named pack file.
  #
  # Example:
  #
  #  <%= image_pack_tag 'application.png', size: '16x10', alt: 'Edit Entry' %>
  #  <img alt='Edit Entry' src='/packs/application-k344a6d59eef8632c9d1.png' width='16' height='10' />
  #
  #  <%= image_pack_tag 'picture.png', srcset: { 'picture-2x.png' => '2x' } %>
  #  <img srcset= "/packs/picture-2x-7cca48e6cae66ec07b8e.png 2x" src="/packs/picture-c38deda30895059837cf.png" >
  #
  # source://shakapacker//lib/webpacker/helper.rb#55
  def image_pack_tag(name, **options); end

  # Computes the absolute path for a given Webpacker image with the same automated
  # processing as image_pack_tag. Returns the relative path using manifest.json
  # and passes it to path_to_asset helper. This will use path_to_asset internally,
  # so most of their behaviors will be the same.
  #
  # source://shakapacker//lib/webpacker/helper.rb#42
  def image_pack_url(name, **options); end

  # Creates script tags that reference the js chunks from entrypoints when using split chunks API,
  # as compiled by webpack per the entries list in package/environments/base.js.
  # By default, this list is auto-generated to match everything in
  # app/packs/entrypoints/*.js and all the dependent chunks. In production mode, the digested reference is automatically looked up.
  # See: https://webpack.js.org/plugins/split-chunks-plugin/
  #
  # Example:
  #
  #   <%= javascript_pack_tag 'calendar', 'map', 'data-turbolinks-track': 'reload' %> # =>
  #   <script src="/packs/vendor-16838bab065ae1e314.chunk.js" data-turbolinks-track="reload" defer="true"></script>
  #   <script src="/packs/calendar~runtime-16838bab065ae1e314.chunk.js" data-turbolinks-track="reload" defer="true"></script>
  #   <script src="/packs/calendar-1016838bab065ae1e314.chunk.js" data-turbolinks-track="reload" defer="true"></script>
  #   <script src="/packs/map~runtime-16838bab065ae1e314.chunk.js" data-turbolinks-track="reload" defer="true"></script>
  #   <script src="/packs/map-16838bab065ae1e314.chunk.js" data-turbolinks-track="reload" defer="true"></script>
  #
  # DO:
  #
  #   <%= javascript_pack_tag 'calendar', 'map' %>
  #
  # DON'T:
  #
  #   <%= javascript_pack_tag 'calendar' %>
  #   <%= javascript_pack_tag 'map' %>
  #
  # source://shakapacker//lib/webpacker/helper.rb#98
  def javascript_pack_tag(*names, defer: T.unsafe(nil), **options); end

  # Creates a link tag, for preloading, that references a given Webpacker asset.
  # In production mode, the digested reference is automatically looked up.
  # See: https://developer.mozilla.org/en-US/docs/Web/HTML/Preloading_content
  #
  # Example:
  #
  #   <%= preload_pack_asset 'fonts/fa-regular-400.woff2' %> # =>
  #   <link rel="preload" href="/packs/fonts/fa-regular-400-944fb546bd7018b07190a32244f67dc9.woff2" as="font" type="font/woff2" crossorigin="anonymous">
  #
  # source://shakapacker//lib/webpacker/helper.rb#125
  def preload_pack_asset(name, **options); end

  # Creates link tags that reference the css chunks from entrypoints when using split chunks API,
  # as compiled by webpack per the entries list in package/environments/base.js.
  # By default, this list is auto-generated to match everything in
  # app/packs/entrypoints/*.js and all the dependent chunks. In production mode, the digested reference is automatically looked up.
  # See: https://webpack.js.org/plugins/split-chunks-plugin/
  #
  # Examples:
  #
  #   <%= stylesheet_pack_tag 'calendar', 'map' %> # =>
  #   <link rel="stylesheet" media="screen" href="/packs/3-8c7ce31a.chunk.css" />
  #   <link rel="stylesheet" media="screen" href="/packs/calendar-8c7ce31a.chunk.css" />
  #   <link rel="stylesheet" media="screen" href="/packs/map-8c7ce31a.chunk.css" />
  #
  #   When using the webpack-dev-server, CSS is inlined so HMR can be turned on for CSS,
  #   including CSS modules
  #   <%= stylesheet_pack_tag 'calendar', 'map' %> # => nil
  #
  # DO:
  #
  #   <%= stylesheet_pack_tag 'calendar', 'map' %>
  #
  # DON'T:
  #
  #   <%= stylesheet_pack_tag 'calendar' %>
  #   <%= stylesheet_pack_tag 'map' %>
  #
  # source://shakapacker//lib/webpacker/helper.rb#158
  def stylesheet_pack_tag(*names, **options); end

  private

  # source://shakapacker//lib/webpacker/helper.rb#202
  def available_sources_from_manifest_entrypoints(names, type:); end

  # source://shakapacker//lib/webpacker/helper.rb#191
  def javascript_pack_tag_queue; end

  # source://shakapacker//lib/webpacker/helper.rb#206
  def resolve_path_to_image(name, **options); end

  # source://shakapacker//lib/webpacker/helper.rb#198
  def sources_from_manifest_entrypoints(names, type:); end
end

# source://shakapacker//lib/webpacker/instance.rb#1
class Webpacker::Instance
  # @return [Instance] a new instance of Instance
  #
  # source://shakapacker//lib/webpacker/instance.rb#6
  def initialize(root_path: T.unsafe(nil), config_path: T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/instance.rb#38
  def commands; end

  # source://shakapacker//lib/webpacker/instance.rb#26
  def compiler; end

  # source://shakapacker//lib/webpacker/instance.rb#14
  def config; end

  # Returns the value of attribute config_path.
  #
  # source://shakapacker//lib/webpacker/instance.rb#4
  def config_path; end

  # source://shakapacker//lib/webpacker/instance.rb#30
  def dev_server; end

  # source://shakapacker//lib/webpacker/instance.rb#10
  def env; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/instance.rb#42
  def inlining_css?; end

  # source://shakapacker//lib/webpacker/instance.rb#2
  def logger; end

  # source://shakapacker//lib/webpacker/instance.rb#2
  def logger=(val); end

  # source://shakapacker//lib/webpacker/instance.rb#34
  def manifest; end

  # Returns the value of attribute root_path.
  #
  # source://shakapacker//lib/webpacker/instance.rb#4
  def root_path; end

  # source://shakapacker//lib/webpacker/instance.rb#22
  def strategy; end

  class << self
    # source://shakapacker//lib/webpacker/instance.rb#2
    def logger; end

    # source://shakapacker//lib/webpacker/instance.rb#2
    def logger=(val); end
  end
end

# Singleton registry for accessing the packs path using a generated manifest.
# This allows javascript_pack_tag, stylesheet_pack_tag, asset_pack_path to take a reference to,
# say, "calendar.js" or "calendar.css" and turn it into "/packs/calendar-1016838bab065ae1e314.js" or
# "/packs/calendar-1016838bab065ae1e314.css".
#
# When the configuration is set to on-demand compilation, with the `compile: true` option in
# the webpacker.yml file, any lookups will be preceded by a compilation if one is needed.
#
# source://shakapacker//lib/webpacker/manifest.rb#8
class Webpacker::Manifest
  # @return [Manifest] a new instance of Manifest
  #
  # source://shakapacker//lib/webpacker/manifest.rb#13
  def initialize(webpacker); end

  # source://shakapacker//lib/webpacker/manifest.rb#11
  def compiler(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/manifest.rb#11
  def config(*_arg0, **_arg1, &_arg2); end

  # source://shakapacker//lib/webpacker/manifest.rb#11
  def dev_server(*_arg0, **_arg1, &_arg2); end

  # Computes the relative path for a given Webpacker asset using manifest.json.
  # If no asset is found, returns nil.
  #
  # Example:
  #
  #   Webpacker.manifest.lookup('calendar.js') # => "/packs/calendar-1016838bab065ae1e122.js"
  #
  # source://shakapacker//lib/webpacker/manifest.rb#41
  def lookup(name, pack_type = T.unsafe(nil)); end

  # Like lookup, except that if no asset is found, raises a Webpacker::Manifest::MissingEntryError.
  #
  # source://shakapacker//lib/webpacker/manifest.rb#48
  def lookup!(name, pack_type = T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/manifest.rb#21
  def lookup_pack_with_chunks(name, pack_type = T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/manifest.rb#31
  def lookup_pack_with_chunks!(name, pack_type = T.unsafe(nil)); end

  # source://shakapacker//lib/webpacker/manifest.rb#17
  def refresh; end

  private

  # source://shakapacker//lib/webpacker/manifest.rb#57
  def compile; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/manifest.rb#53
  def compiling?; end

  # source://shakapacker//lib/webpacker/manifest.rb#61
  def data; end

  # source://shakapacker//lib/webpacker/manifest.rb#69
  def find(name); end

  # source://shakapacker//lib/webpacker/manifest.rb#73
  def full_pack_name(name, pack_type); end

  # @raise [Webpacker::Manifest::MissingEntryError]
  #
  # source://shakapacker//lib/webpacker/manifest.rb#78
  def handle_missing_entry(name, pack_type); end

  # source://shakapacker//lib/webpacker/manifest.rb#82
  def load; end

  # The `manifest_name` method strips of the file extension of the name, because in the
  # manifest hash the entrypoints are defined by their pack name without the extension.
  # When the user provides a name with a file extension, we want to try to strip it off.
  #
  # source://shakapacker//lib/webpacker/manifest.rb#93
  def manifest_name(name, pack_type); end

  # source://shakapacker//lib/webpacker/manifest.rb#97
  def manifest_type(pack_type); end

  # source://shakapacker//lib/webpacker/manifest.rb#105
  def missing_file_from_manifest_error(bundle_name); end
end

# source://shakapacker//lib/webpacker/manifest.rb#9
class Webpacker::Manifest::MissingEntryError < ::StandardError; end

# source://shakapacker//lib/webpacker/mtime_strategy.rb#5
class Webpacker::MtimeStrategy < ::Webpacker::BaseStrategy
  # Returns true if manifest file mtime is newer than the timestamp of the last modified watched file
  #
  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/mtime_strategy.rb#6
  def fresh?; end

  # Returns true if manifest file mtime is older than the timestamp of the last modified watched file
  #
  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/mtime_strategy.rb#11
  def stale?; end

  private

  # source://shakapacker//lib/webpacker/mtime_strategy.rb#21
  def latest_modified_timestamp; end

  # source://shakapacker//lib/webpacker/mtime_strategy.rb#17
  def manifest_mtime; end
end

# Change the version in package.json too, please!
#
# source://shakapacker//lib/webpacker/version.rb#3
Webpacker::VERSION = T.let(T.unsafe(nil), String)

# source://shakapacker//lib/webpacker/version_checker.rb#5
class Webpacker::VersionChecker
  # @return [VersionChecker] a new instance of VersionChecker
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#14
  def initialize(node_package_version); end

  # Returns the value of attribute node_package_version.
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#6
  def node_package_version; end

  # source://shakapacker//lib/webpacker/version_checker.rb#18
  def raise_if_gem_and_node_package_versions_differ; end

  private

  # source://shakapacker//lib/webpacker/version_checker.rb#59
  def common_error_msg; end

  # source://shakapacker//lib/webpacker/version_checker.rb#85
  def gem_major_minor_patch_version; end

  # source://shakapacker//lib/webpacker/version_checker.rb#81
  def gem_version; end

  # source://shakapacker//lib/webpacker/version_checker.rb#70
  def raise_differing_versions_warning; end

  # source://shakapacker//lib/webpacker/version_checker.rb#75
  def raise_node_semver_version_warning; end

  class << self
    # source://shakapacker//lib/webpacker/version_checker.rb#10
    def build; end
  end
end

# source://shakapacker//lib/webpacker/version_checker.rb#8
Webpacker::VersionChecker::MAJOR_MINOR_PATCH_VERSION_REGEX = T.let(T.unsafe(nil), Regexp)

# source://shakapacker//lib/webpacker/version_checker.rb#90
class Webpacker::VersionChecker::NodePackageVersion
  # @return [NodePackageVersion] a new instance of NodePackageVersion
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#101
  def initialize(package_json); end

  # source://shakapacker//lib/webpacker/version_checker.rb#118
  def major_minor_patch; end

  # Returns the value of attribute package_json.
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#91
  def package_json; end

  # source://shakapacker//lib/webpacker/version_checker.rb#105
  def raw; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#110
  def semver_wildcard?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#114
  def skip_processing?; end

  private

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#139
  def git_url?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#143
  def github_url?; end

  # source://shakapacker//lib/webpacker/version_checker.rb#147
  def package_json_contents; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#131
  def package_specified?; end

  # @return [Boolean]
  #
  # source://shakapacker//lib/webpacker/version_checker.rb#135
  def relative_path?; end

  class << self
    # source://shakapacker//lib/webpacker/version_checker.rb#93
    def build; end

    # source://shakapacker//lib/webpacker/version_checker.rb#97
    def package_json_path; end
  end
end
