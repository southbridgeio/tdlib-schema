module TD::Types
  # Information about the sticker, which was used to create the chat photo.
  #
  # @attr sticker_set_id [Integer] Sticker set identifier.
  # @attr sticker_id [Integer] Identifier of the sticker in the set.
  class ChatPhotoStickerType::RegularOrMask < ChatPhotoStickerType
    attribute :sticker_set_id, TD::Types::Coercible::Integer
    attribute :sticker_id, TD::Types::Coercible::Integer
  end
end
