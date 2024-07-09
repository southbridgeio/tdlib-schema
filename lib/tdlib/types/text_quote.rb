module TD::Types
  # Describes manually or automatically chosen quote from another message.
  #
  # @attr text [TD::Types::FormattedText] Text of the quote.
  #   Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text.
  # @attr position [Integer] Approximate quote position in the original message in UTF-16 code units as specified by
  #   the message sender.
  # @attr is_manual [Boolean] True, if the quote was manually chosen by the message sender.
  class TextQuote < Base
    attribute :text, TD::Types::FormattedText
    attribute :position, TD::Types::Coercible::Integer
    attribute :is_manual, TD::Types::Bool
  end
end
