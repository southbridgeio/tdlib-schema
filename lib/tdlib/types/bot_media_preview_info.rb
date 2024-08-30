module TD::Types
  # Contains a list of media previews of a bot for the given language and the list of languages for which the bot has
  #   dedicated previews.
  #
  # @attr previews [Array<TD::Types::BotMediaPreview>] List of media previews.
  # @attr language_codes [Array<TD::Types::String>] List of language codes for which the bot has dedicated previews.
  class BotMediaPreviewInfo < Base
    attribute :previews, TD::Types::Array.of(TD::Types::BotMediaPreview)
    attribute :language_codes, TD::Types::Array.of(TD::Types::String)
  end
end
