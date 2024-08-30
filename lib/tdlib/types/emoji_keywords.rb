module TD::Types
  # Represents a list of emojis with their keywords.
  #
  # @attr emoji_keywords [Array<TD::Types::EmojiKeyword>] List of emojis with their keywords.
  class EmojiKeywords < Base
    attribute :emoji_keywords, TD::Types::Array.of(TD::Types::EmojiKeyword)
  end
end
