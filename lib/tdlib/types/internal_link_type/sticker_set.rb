module TD::Types
  # The link is a link to a sticker set.
  # Call searchStickerSet with the given sticker set name to process the link and show the sticker set.
  # If the sticker set is found and the user wants to add it, then call changeStickerSet.
  #
  # @attr sticker_set_name [TD::Types::String] Name of the sticker set.
  # @attr expect_custom_emoji [Boolean] True, if the sticker set is expected to contain custom emoji.
  class InternalLinkType::StickerSet < InternalLinkType
    attribute :sticker_set_name, TD::Types::String
    attribute :expect_custom_emoji, TD::Types::Bool
  end
end
