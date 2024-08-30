module TD::Types
  # The category contains a list of similar emoji to search for in getStickers and searchStickers for stickers, or
  #   getInlineQueryResults with the bot getOption("animation_search_bot_username") for animations.
  #
  # @attr emojis [Array<TD::Types::String>] List of emojis to search for.
  class EmojiCategorySource::Search < EmojiCategorySource
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
