module TD::Types
  # Describes a custom emoji to be shown instead of the Telegram Premium badge.
  #
  # @attr custom_emoji_id [Integer] Identifier of the custom emoji in {TD::Types::StickerFormat::Tgs} format.
  # @attr expiration_date [Integer] Point in time (Unix timestamp) when the status will expire; 0 if never.
  class EmojiStatus < Base
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
    attribute :expiration_date, TD::Types::Coercible::Integer
  end
end
