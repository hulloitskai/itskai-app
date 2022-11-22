# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `front_matter_parser` gem.
# Please instead update this file by running `bin/tapioca gem front_matter_parser`.

# FrontMatterParser is a library to parse a front matter from strings or
# files. It allows writing syntactically correct source files, marking front
# matters as comments in the source file language.
#
# source://front_matter_parser//lib/front_matter_parser/version.rb#3
module FrontMatterParser; end

# This module includes front matter loaders (from a string -usually extracted
# with a {SyntaxParser}- to hash). They must respond to a `::call` method
# which accepts the String as argument and respond with a Hash.
#
# source://front_matter_parser//lib/front_matter_parser/loader/yaml.rb#6
module FrontMatterParser::Loader; end

# {Loader} that uses YAML library
#
# source://front_matter_parser//lib/front_matter_parser/loader/yaml.rb#8
class FrontMatterParser::Loader::Yaml
  # @return [Yaml] a new instance of Yaml
  #
  # source://front_matter_parser//lib/front_matter_parser/loader/yaml.rb#13
  def initialize(allowlist_classes: T.unsafe(nil)); end

  # Classes that may be parsed by #call.
  #
  # source://front_matter_parser//lib/front_matter_parser/loader/yaml.rb#11
  def allowlist_classes; end

  # Loads a hash front matter from a string
  #
  # @param string [String] front matter string representation
  # @return [Hash] front matter hash representation
  #
  # source://front_matter_parser//lib/front_matter_parser/loader/yaml.rb#21
  def call(string); end
end

# Result of parsing front matter and content from a string
#
# source://front_matter_parser//lib/front_matter_parser/parsed.rb#5
class FrontMatterParser::Parsed
  # @param front_matter [Hash] parsed front_matter
  # @param content [String] parsed content
  # @return [Parsed] a new instance of Parsed
  #
  # source://front_matter_parser//lib/front_matter_parser/parsed.rb#16
  def initialize(front_matter:, content:); end

  # Returns front matter value for given key
  #
  # @param key [String] key for desired value
  # @return [String, Array, #Hashh] desired value
  #
  # source://front_matter_parser//lib/front_matter_parser/parsed.rb#25
  def [](key); end

  # @see #initialize
  #
  # source://front_matter_parser//lib/front_matter_parser/parsed.rb#12
  def content; end

  # @see #initialize
  #
  # source://front_matter_parser//lib/front_matter_parser/parsed.rb#8
  def front_matter; end
end

# Entry point to parse a front matter from a string or file.
#
# source://front_matter_parser//lib/front_matter_parser/parser.rb#5
class FrontMatterParser::Parser
  # details.
  #
  # @param syntax_parser [Object] Syntax parser to use. It can be one of two
  #   things:
  #
  #   - An actual object which acts like a parser. See {SyntaxParser} for
  #   details.
  #
  #   - A symbol, in which case it refers to a parser
  #   `FrontMatterParser::SyntaxParser::#{symbol.capitalize}` which can be
  #   initialized without arguments
  # @param loader [Object] Front matter loader to use. See {Loader} for
  # @return [Parser] a new instance of Parser
  #
  # source://front_matter_parser//lib/front_matter_parser/parser.rb#53
  def initialize(syntax_parser, loader: T.unsafe(nil)); end

  # Parses front matter and content from given string
  #
  # :reek:FeatureEnvy
  #
  # @param string [String]
  # @return [Parsed] parsed front matter and content
  #
  # source://front_matter_parser//lib/front_matter_parser/parser.rb#63
  def call(string); end

  # Current loader in use. See {Loader} for details
  #
  # source://front_matter_parser//lib/front_matter_parser/parser.rb#12
  def loader; end

  # Current syntax parser in use. See {SyntaxParser}
  #
  # source://front_matter_parser//lib/front_matter_parser/parser.rb#8
  def syntax_parser; end

  private

  # source://front_matter_parser//lib/front_matter_parser/parser.rb#76
  def infer_syntax_parser(syntax_parser); end

  class << self
    # Parses front matter and content from given pathname, inferring syntax from
    # the extension or, otherwise, using syntax_parser argument.
    #
    # @param pathname [String]
    # @param syntax_parser [Object] see {SyntaxParser}
    # @param loader [Object] see {Loader}
    # @return [Parsed] parsed front matter and content
    #
    # source://front_matter_parser//lib/front_matter_parser/parser.rb#21
    def parse_file(pathname, syntax_parser: T.unsafe(nil), loader: T.unsafe(nil)); end

    # source://front_matter_parser//lib/front_matter_parser/parser.rb#30
    def syntax_from_pathname(pathname); end

    # source://front_matter_parser//lib/front_matter_parser/parser.rb#35
    def syntax_parser_from_symbol(syntax); end
  end
end

# This module includes parsers for different syntaxes.  They respond to
# a method `#call`, which takes a string as argument and responds with
# a hash interface with `:front_matter` and `:content` keys, or `nil` if no
# front matter is found.
#
# :reek:TooManyConstants
#
# source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#4
module FrontMatterParser::SyntaxParser; end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Coffee < ::FrontMatterParser::SyntaxParser::SingleLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Erb < ::FrontMatterParser::SyntaxParser::MultiLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# This is just a helper to allow creating syntax parsers with a more terse
# syntax, without the need of explicitly creating descendant classes for the
# most general cases. See {SyntaxParser} for examples in use.
#
# source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#8
module FrontMatterParser::SyntaxParser::Factorizable
  # used by the parser
  #
  # added which returns an array with given comment delimiters
  #
  # @param delimiters [String] Splat arguments with all comment delimiters
  # @return [Object] A base class of self with a `delimiters` class method
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#14
  def [](*delimiters); end

  private

  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#21
  def create_base_class(delimiters); end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Haml < ::FrontMatterParser::SyntaxParser::IndentationComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Html < ::FrontMatterParser::SyntaxParser::MultiLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# Parser for syntaxes which use comments ended by indentation
#
# source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#6
class FrontMatterParser::SyntaxParser::IndentationComment
  extend ::FrontMatterParser::SyntaxParser::Factorizable

  # @return [IndentationComment] a new instance of IndentationComment
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#13
  def initialize; end

  # @see SyntaxParser
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#18
  def call(string); end

  # A regexp that returns two groups: front_matter and content
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#11
  def regexp; end

  private

  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#31
  def build_regexp(delimiter); end

  class << self
    # :nocov:
    #
    # @raise [NotImplementedError]
    # @see Factorizable
    #
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/indentation_comment.rb#24
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Liquid < ::FrontMatterParser::SyntaxParser::MultiLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Md < ::FrontMatterParser::SyntaxParser::MultiLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# Parser for syntaxes which use end and finish comment delimiters
#
# source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#6
class FrontMatterParser::SyntaxParser::MultiLineComment
  extend ::FrontMatterParser::SyntaxParser::Factorizable

  # @return [MultiLineComment] a new instance of MultiLineComment
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#13
  def initialize; end

  # @see SyntaxParser
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#18
  def call(string); end

  # A regexp that returns two groups: front_matter and content
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#11
  def regexp; end

  private

  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#31
  def build_regexp(start_delimiter, end_delimiter); end

  class << self
    # :nocov:
    #
    # @raise [NotImplementedError]
    # @see Factorizable
    #
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/multi_line_comment.rb#24
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Sass < ::FrontMatterParser::SyntaxParser::SingleLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Scss < ::FrontMatterParser::SyntaxParser::SingleLineComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# Parser for syntaxes which each comment is for a single line
#
# source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#6
class FrontMatterParser::SyntaxParser::SingleLineComment
  extend ::FrontMatterParser::SyntaxParser::Factorizable

  # @return [SingleLineComment] a new instance of SingleLineComment
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#14
  def initialize; end

  # @see SyntaxParser
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#19
  def call(string); end

  # A regexp that returns two groups: front_matter (with comment delimiter
  # in it) and content
  #
  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#12
  def regexp; end

  private

  # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#47
  def build_regexp(delimiter); end

  class << self
    # :nocov:
    #
    # @raise [NotImplementedError]
    # @see Factorizable
    #
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#34
    def delimiters; end

    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/single_line_comment.rb#39
    def remove_delimiter(front_matter); end
  end
end

# source://front_matter_parser//lib/front_matter_parser/syntax_parser.rb#0
class FrontMatterParser::SyntaxParser::Slim < ::FrontMatterParser::SyntaxParser::IndentationComment
  class << self
    # source://front_matter_parser//lib/front_matter_parser/syntax_parser/factorizable.rb#23
    def delimiters; end
  end
end

# source://front_matter_parser//lib/front_matter_parser/version.rb#4
FrontMatterParser::VERSION = T.let(T.unsafe(nil), String)