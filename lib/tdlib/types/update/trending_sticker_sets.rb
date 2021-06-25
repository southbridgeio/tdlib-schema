module TD::Types
  # The list of trending sticker sets was updated or some of them were viewed.
  #
  # @attr sticker_sets [TD::Types::StickerSets] The prefix of the list of trending sticker sets with the newest
  #   trending sticker sets.
  class Update::TrendingStickerSets < Update
    attribute :sticker_sets, TD::Types::StickerSets
  end
end
