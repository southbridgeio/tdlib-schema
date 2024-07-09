module TD::Types
  # Information about the custom emoji, which was used to create the chat photo.
  #
  # @attr custom_emoji_id [Integer] Identifier of the custom emoji.
  class ChatPhotoStickerType::CustomEmoji < ChatPhotoStickerType
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
