module TD::Types
  # The list of installed sticker sets was updated.
  #
  # @attr sticker_type [TD::Types::StickerType] Type of the affected stickers.
  # @attr sticker_set_ids [Array<Integer>] The new list of installed ordinary sticker sets.
  class Update::InstalledStickerSets < Update
    attribute :sticker_type, TD::Types::StickerType
    attribute :sticker_set_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
