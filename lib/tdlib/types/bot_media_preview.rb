module TD::Types
  # Describes media previews of a bot.
  #
  # @attr date [Integer] Point in time (Unix timestamp) when the preview was added or changed last time.
  # @attr content [TD::Types::StoryContent] Content of the preview.
  class BotMediaPreview < Base
    attribute :date, TD::Types::Coercible::Integer
    attribute :content, TD::Types::StoryContent
  end
end
