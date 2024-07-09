module TD::Types
  # The sticker is a mask in WEBP format to be placed on photos or videos.
  #
  # @attr mask_position [TD::Types::MaskPosition, nil] Position where the mask is placed; may be null.
  class StickerFullType::Mask < StickerFullType
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
  end
end
