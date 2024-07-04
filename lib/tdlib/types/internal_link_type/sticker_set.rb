module TD::Types
  # The link is a link to a sticker set.
  # Call searchStickerSet with the given sticker set name to process the link and show the sticker set.
  #
  # @attr sticker_set_name [TD::Types::String] Name of the sticker set.
  class InternalLinkType::StickerSet < InternalLinkType
    attribute :sticker_set_name, TD::Types::String
  end
end
