# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `premailer` gem.
# Please instead update this file by running `bin/tapioca gem premailer`.

# RGB helper for adapters, currently only nokogiri supported
#
# source://premailer//lib/premailer/adapter/rgb_to_hex.rb#3
module AdapterHelper; end

# source://premailer//lib/premailer/adapter/rgb_to_hex.rb#4
module AdapterHelper::RgbToHex
  # source://premailer//lib/premailer/adapter/rgb_to_hex.rb#24
  def ensure_hex(color); end

  # @return [Boolean]
  #
  # source://premailer//lib/premailer/adapter/rgb_to_hex.rb#9
  def is_rgb?(color); end

  # source://premailer//lib/premailer/adapter/rgb_to_hex.rb#5
  def to_hex(str); end
end

# Support functions for Premailer
#
# source://premailer//lib/premailer/html_to_plain_text.rb#5
module HtmlToPlainText
  # Returns the text in UTF-8 format with all HTML tags removed
  #
  # HTML content can be omitted from the output by surrounding it in the following comments:
  #
  # <!-- start text/html -->
  # <!-- end text/html -->
  #
  # TODO: add support for DL, OL
  # TODO: this is not safe and needs a real html parser to work
  #
  # source://premailer//lib/premailer/html_to_plain_text.rb#16
  def convert_to_text(html, line_length = T.unsafe(nil), from_charset = T.unsafe(nil)); end

  # Taken from Rails' word_wrap helper (http://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-word_wrap)
  #
  # source://premailer//lib/premailer/html_to_plain_text.rb#128
  def word_wrap(txt, line_length); end
end

# source://premailer//lib/premailer/adapter.rb#1
class Premailer
  include ::HtmlToPlainText
  include ::CssParser
  include ::Premailer::Warnings

  # Create a new Premailer object.
  #
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param html is the HTML data to process. It can be either an IO object, the URL of a
  #   remote file, a local path or a raw HTML string.  If passing an HTML string you
  #   must set the with_html_string option to true.
  # @param options [Hash] the options to handle html with.
  # @return [Premailer] a new instance of Premailer
  #
  # source://premailer//lib/premailer/premailer.rb#183
  def initialize(html, options = T.unsafe(nil)); end

  # source://premailer//lib/premailer/premailer.rb#358
  def append_query_string(doc, qs); end

  # base directory used to resolve links for local files
  #
  # @return [String] base directory
  #
  # source://premailer//lib/premailer/premailer.rb#119
  def base_dir; end

  # base URL used to resolve links
  #
  # source://premailer//lib/premailer/premailer.rb#115
  def base_url; end

  # Check <tt>CLIENT_SUPPORT_FILE</tt> for any CSS warnings
  #
  # source://premailer//lib/premailer/premailer.rb#509
  def check_client_support; end

  # Convert relative links to absolute links.
  #
  # Processes <tt>href</tt> <tt>src</tt> and <tt>background</tt> attributes
  # as well as CSS <tt>url()</tt> declarations found in inline <tt>style</tt> attributes.
  #
  # <tt>doc</tt> is a document and <tt>base_uri</tt> is either a string or a URI.
  #
  # Returns a document.
  #
  # source://premailer//lib/premailer/premailer.rb#424
  def convert_inline_links(doc, base_uri); end

  # source HTML document (Nokogiri/Nokogumbo)
  #
  # source://premailer//lib/premailer/premailer.rb#128
  def doc; end

  # URI of the HTML file used
  #
  # source://premailer//lib/premailer/premailer.rb#112
  def html_file; end

  # Check for an XHTML doctype
  #
  # @return [Boolean]
  #
  # source://premailer//lib/premailer/premailer.rb#409
  def is_xhtml?; end

  # @deprecated
  # @private
  # @return [Boolean]
  #
  # source://premailer//lib/premailer/premailer.rb#344
  def local_uri?(uri); end

  # @private
  # @return [Boolean]
  #
  # source://premailer//lib/premailer/premailer.rb#352
  def media_type_ok?(media_types); end

  # processed HTML document (Nokogiri/Nokogumbo)
  #
  # source://premailer//lib/premailer/premailer.rb#125
  def processed_doc; end

  # unmergeable CSS rules to be preserved in the head (CssParser)
  #
  # source://premailer//lib/premailer/premailer.rb#122
  def unmergable_rules; end

  # CSS warnings.
  #
  # @return [Array(Hash)] Array of warnings.
  #
  # source://premailer//lib/premailer/premailer.rb#259
  def warnings; end

  protected

  # Load CSS included in <tt>style</tt> and <tt>link</tt> tags from an HTML document.
  #
  # source://premailer//lib/premailer/premailer.rb#300
  def load_css_from_html!; end

  # source://premailer//lib/premailer/premailer.rb#266
  def load_css_from_local_file!(path); end

  # @private
  #
  # source://premailer//lib/premailer/premailer.rb#287
  def load_css_from_options!; end

  # source://premailer//lib/premailer/premailer.rb#282
  def load_css_from_string(css_string); end

  class << self
    # from http://www.ruby-forum.com/topic/140101
    #
    # source://premailer//lib/premailer/premailer.rb#502
    def canonicalize(uri); end

    # @private
    # @return [Boolean]
    #
    # source://premailer//lib/premailer/premailer.rb#470
    def is_media_query?(media_types); end

    # Test the passed variable to see if we are in local or remote mode.
    #
    # IO objects return true, as do strings that look like URLs.
    #
    # @return [Boolean]
    #
    # source://premailer//lib/premailer/premailer.rb#496
    def local_data?(data); end

    # @private
    #
    # source://premailer//lib/premailer/premailer.rb#475
    def resolve_link(path, base_path); end
  end
end

# Manages the adapter classes. Currently supports:
#
# * nokogiri
# * nokogiri_fast
# * nokogumbo
#
# source://premailer//lib/premailer/adapter.rb#7
module Premailer::Adapter
  class << self
    # The default adapter based on what you currently have loaded and
    # installed. First checks to see if any adapters are already loaded,
    # then checks to see which are installed if none are loaded.
    #
    # @raise [RuntimeError] unless suitable adapter found.
    #
    # source://premailer//lib/premailer/adapter.rb#31
    def default; end

    # Returns an adapter.
    #
    # @raise [ArgumentError] unless the adapter exists.
    #
    # source://premailer//lib/premailer/adapter.rb#56
    def find(adapter); end

    # Returns the adapter to use.
    #
    # source://premailer//lib/premailer/adapter.rb#21
    def use; end

    # Sets the adapter to use.
    #
    # @raise [ArgumentError] unless the adapter exists.
    #
    # source://premailer//lib/premailer/adapter.rb#50
    def use=(new_adapter); end
  end
end

# Nokogiri adapter
#
# source://premailer//lib/premailer/adapter/nokogiri.rb#6
module Premailer::Adapter::Nokogiri
  include ::AdapterHelper::RgbToHex

  # Load the HTML file and convert it into an Nokogiri document.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogiri.rb#210
  def load_html(input); end

  # Merge CSS into the HTML document.
  #
  # @return [String] an HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogiri.rb#12
  def to_inline_css; end

  # Converts the HTML document to a format suitable for plain-text e-mail.
  #
  # If present, uses the <body> element as its base; otherwise uses the whole document.
  #
  # @return [String] a plain text.
  #
  # source://premailer//lib/premailer/adapter/nokogiri.rb#186
  def to_plain_text; end

  # Gets the original HTML as a string.
  #
  # @return [String] HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogiri.rb#199
  def to_s; end

  # Create a <tt>style</tt> element with un-mergable rules (e.g. <tt>:hover</tt>)
  # and write it into the <tt>head</tt>.
  #
  # <tt>doc</tt> is an Nokogiri document and <tt>unmergable_css_rules</tt> is a Css::RuleSet.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogiri.rb#162
  def write_unmergable_css_rules(doc, unmergable_rules); end
end

# NokogiriFast adapter
#
# source://premailer//lib/premailer/adapter/nokogiri_fast.rb#6
module Premailer::Adapter::NokogiriFast
  include ::AdapterHelper::RgbToHex

  # Load the HTML file and convert it into an Nokogiri document.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#214
  def load_html(input); end

  # Merge CSS into the HTML document.
  #
  # @return [String] an HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#12
  def to_inline_css; end

  # Converts the HTML document to a format suitable for plain-text e-mail.
  #
  # If present, uses the <body> element as its base; otherwise uses the whole document.
  #
  # @return [String] a plain text.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#190
  def to_plain_text; end

  # Gets the original HTML as a string.
  #
  # @return [String] HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#203
  def to_s; end

  # Create a <tt>style</tt> element with un-mergable rules (e.g. <tt>:hover</tt>)
  # and write it into the <tt>head</tt>.
  #
  # <tt>doc</tt> is an Nokogiri document and <tt>unmergable_css_rules</tt> is a Css::RuleSet.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#166
  def write_unmergable_css_rules(doc, unmergable_rules); end

  private

  # @param doc The top level document
  # @param elem The element whose ancestry is to be captured
  # @param parent the current parent in the process of capturing. Should be set to elem.parent for starters.
  # @param descendants The running hash map of node -> set of nodes that maps descendants of a node.
  # @return The descendants argument after updating it.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#324
  def index_ancestry(doc, elem, parent, descendants); end

  # For very large documents, it is useful to trade off some memory for performance.
  # We can build an index of the nodes so we can quickly select by id/class/tagname
  # instead of search the tree again and again.
  #
  # @param page The Nokogiri HTML document to index.
  # @return [index, set_of_all_nodes, descendants] The index is a hash from key to set of nodes.
  #   The "descendants" is a hash mapping a node to the set of its descendant nodes.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#275
  def make_index(page); end

  # Note that fancy CSS selector syntax is not supported. Anything
  # not matching the regex /^[-a-zA-Z0-9\s_.#]*$/ should not be passed.
  # It will return nil when such a selector is passed, so you can take
  # action on the falsity of the return value.
  #
  # @param index An index returned by make_index
  # @param allNodes The set of all nodes in the DOM to search
  # @param selector A simple CSS tree matching selector of the form "div.container p.item span"
  # @return Set of matching nodes
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#355
  def match_selector(index, all_nodes, descendants, selector); end

  # @param index An index hash returned by make_index
  # @param base The base set of nodes within which the given spec is to be matched.
  # @param intersection_selector A CSS intersection selector string of the form
  #   "hello.world" or "#blue.diamond". This should not contain spaces.
  # @return Set of nodes matching the given spec that are present in the base set.
  #
  # source://premailer//lib/premailer/adapter/nokogiri_fast.rb#339
  def narrow_down_nodes(index, base, intersection_selector); end
end

# Nokogiri adapter
#
# source://premailer//lib/premailer/adapter/nokogumbo.rb#4
module Premailer::Adapter::Nokogumbo
  include ::AdapterHelper::RgbToHex

  # Load the HTML file and convert it into an Nokogiri document.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogumbo.rb#208
  def load_html(input); end

  # Merge CSS into the HTML document.
  #
  # @return [String] an HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogumbo.rb#10
  def to_inline_css; end

  # Converts the HTML document to a format suitable for plain-text e-mail.
  #
  # If present, uses the <body> element as its base; otherwise uses the whole document.
  #
  # @return [String] a plain text.
  #
  # source://premailer//lib/premailer/adapter/nokogumbo.rb#184
  def to_plain_text; end

  # Gets the original HTML as a string.
  #
  # @return [String] HTML.
  #
  # source://premailer//lib/premailer/adapter/nokogumbo.rb#197
  def to_s; end

  # Create a <tt>style</tt> element with un-mergable rules (e.g. <tt>:hover</tt>)
  # and write it into the <tt>head</tt>.
  #
  # <tt>doc</tt> is an Nokogiri document and <tt>unmergable_css_rules</tt> is a Css::RuleSet.
  #
  # @return [::Nokogiri::XML] a document.
  #
  # source://premailer//lib/premailer/adapter/nokogumbo.rb#160
  def write_unmergable_css_rules(doc, unmergable_rules); end
end

# adapter to required file mapping.
#
# source://premailer//lib/premailer/adapter.rb#14
Premailer::Adapter::REQUIREMENT_MAP = T.let(T.unsafe(nil), Array)

# source://premailer//lib/premailer/premailer.rb#38
Premailer::CLIENT_SUPPORT_FILE = T.let(T.unsafe(nil), String)

# list of HTMLEntities to fix
# source: http://stackoverflow.com/questions/2812781/how-to-convert-webpage-apostrophe-8217-to-ascii-39-in-ruby-1-
#
# source://premailer//lib/premailer/premailer.rb#47
Premailer::HTML_ENTITIES = T.let(T.unsafe(nil), Hash)

# list of CSS attributes that can be rendered as HTML attributes
#
# @todo too much repetition
# @todo background=""
#
# source://premailer//lib/premailer/premailer.rb#65
Premailer::RELATED_ATTRIBUTES = T.let(T.unsafe(nil), Hash)

# Reset selectors regexp.
#
# source://premailer//lib/premailer/premailer.rb#43
Premailer::RE_RESET_SELECTORS = T.let(T.unsafe(nil), Regexp)

# Unmergable selectors regexp.
#
# source://premailer//lib/premailer/premailer.rb#41
Premailer::RE_UNMERGABLE_SELECTORS = T.let(T.unsafe(nil), Regexp)

# Premailer version.
#
# source://premailer//lib/premailer/version.rb#3
Premailer::VERSION = T.let(T.unsafe(nil), String)

# Waning level names
#
# source://premailer//lib/premailer/premailer.rb#144
Premailer::WARN_LABEL = T.let(T.unsafe(nil), Array)

# Warning levels
#
# source://premailer//lib/premailer/premailer.rb#131
module Premailer::Warnings; end

# No warnings
#
# source://premailer//lib/premailer/premailer.rb#133
Premailer::Warnings::NONE = T.let(T.unsafe(nil), Integer)

# Poor
#
# source://premailer//lib/premailer/premailer.rb#137
Premailer::Warnings::POOR = T.let(T.unsafe(nil), Integer)

# Risky
#
# source://premailer//lib/premailer/premailer.rb#139
Premailer::Warnings::RISKY = T.let(T.unsafe(nil), Integer)

# Safe
#
# source://premailer//lib/premailer/premailer.rb#135
Premailer::Warnings::SAFE = T.let(T.unsafe(nil), Integer)
