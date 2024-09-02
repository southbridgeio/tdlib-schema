module TD::Types
  # Contains a list of media previews of a bot.
  #
  # @attr previews [Array<TD::Types::BotMediaPreview>] List of media previews.
  class BotMediaPreviews < Base
    attribute :previews, TD::Types::Array.of(TD::Types::BotMediaPreview)
  end
end
