module TD::Types
  # The link is a link to a sticker set.
  #
  # @attr stickers [Array<TD::Types::Sticker>] Up to 4 stickers from the sticker set.
  class LinkPreviewType::StickerSet < LinkPreviewType
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
  end
end
