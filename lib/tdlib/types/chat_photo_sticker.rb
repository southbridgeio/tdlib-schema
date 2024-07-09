module TD::Types
  # Information about the sticker, which was used to create the chat photo.
  # The sticker is shown at the center of the photo and occupies at most 67% of it.
  #
  # @attr type [TD::Types::ChatPhotoStickerType] Type of the sticker.
  # @attr background_fill [TD::Types::BackgroundFill] The fill to be used as background for the sticker; rotation angle
  #   in {TD::Types::BackgroundFill::Gradient} isn't supported.
  class ChatPhotoSticker < Base
    attribute :type, TD::Types::ChatPhotoStickerType
    attribute :background_fill, TD::Types::BackgroundFill
  end
end
