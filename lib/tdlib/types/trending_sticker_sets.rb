module TD::Types
  # Represents a list of trending sticker sets.
  #
  # @attr total_count [Integer] Approximate total number of trending sticker sets.
  # @attr sets [Array<TD::Types::StickerSetInfo>] List of trending sticker sets.
  # @attr is_premium [Boolean] True, if the list contains sticker sets with premium stickers.
  class TrendingStickerSets < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :sets, TD::Types::Array.of(TD::Types::StickerSetInfo)
    attribute :is_premium, TD::Types::Bool
  end
end
