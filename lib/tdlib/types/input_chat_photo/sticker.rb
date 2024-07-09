module TD::Types
  # A sticker on a custom background.
  #
  # @attr sticker [TD::Types::ChatPhotoSticker] Information about the sticker.
  class InputChatPhoto::Sticker < InputChatPhoto
    attribute :sticker, TD::Types::ChatPhotoSticker
  end
end
