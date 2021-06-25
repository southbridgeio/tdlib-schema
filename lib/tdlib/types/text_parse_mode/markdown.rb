module TD::Types
  # The text uses Markdown-style formatting.
  #
  # @attr version [Integer] Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot
  #   API "MarkdownV2" parse mode.
  class TextParseMode::Markdown < TextParseMode
    attribute :version, TD::Types::Integer
  end
end
