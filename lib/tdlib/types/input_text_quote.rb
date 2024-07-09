module TD::Types
  # Describes manually chosen quote from another message.
  #
  # @attr text [TD::Types::FormattedText] Text of the quote; 0-getOption("message_reply_quote_length_max") characters.
  #   Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be
  #   kept in the quote.
  # @attr position [Integer] Quote position in the original message in UTF-16 code units.
  class InputTextQuote < Base
    attribute :text, TD::Types::FormattedText
    attribute :position, TD::Types::Coercible::Integer
  end
end
