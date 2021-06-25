module TD::Types
  # A sticker set has changed.
  #
  # @attr sticker_set [TD::Types::StickerSet] The sticker set.
  class Update::StickerSet < Update
    attribute :sticker_set, TD::Types::StickerSet
  end
end
