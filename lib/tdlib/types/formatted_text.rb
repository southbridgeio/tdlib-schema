module TD::Types
  # A text with some entities.
  #
  # @attr text [TD::Types::String] The text.
  # @attr entities [Array<TD::Types::TextEntity>] Entities contained in the text.
  #   Entities can be nested, but must not mutually intersect with each other.
  #   Pre, Code and PreCode entities can't contain other entities.
  #   BlockQuote entities can't contain other BlockQuote entities.
  #   Bold, Italic, Underline, Strikethrough, and Spoiler entities can contain and can be part of any other entities.
  #   All other entities can't contain each other.
  class FormattedText < Base
    attribute :text, TD::Types::String
    attribute :entities, TD::Types::Array.of(TD::Types::TextEntity)
  end
end
