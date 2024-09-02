module TD::Types
  # The sticker is a custom emoji to be used inside message text and caption.
  # Currently, only Telegram Premium users can use custom emoji.
  #
  # @attr custom_emoji_id [Integer] Identifier of the custom emoji.
  # @attr needs_repainting [Boolean] True, if the sticker must be repainted to a text color in messages, the color of
  #   the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places.
  class StickerFullType::CustomEmoji < StickerFullType
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
    attribute :needs_repainting, TD::Types::Bool
  end
end
