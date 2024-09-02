module TD::Types
  # A custom emoji.
  # The text behind a custom emoji must be an emoji.
  # Only premium users can use premium custom emoji.
  #
  # @attr custom_emoji_id [Integer] Unique identifier of the custom emoji.
  class TextEntityType::CustomEmoji < TextEntityType
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
