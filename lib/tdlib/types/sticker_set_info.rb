module TD::Types
  # Represents short information about a sticker set.
  #
  # @attr id [Integer] Identifier of the sticker set.
  # @attr title [TD::Types::String] Title of the sticker set.
  # @attr name [TD::Types::String] Name of the sticker set.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Sticker set thumbnail in WEBP or TGS format with width and height 100;
  #   may be null.
  # @attr thumbnail_outline [Array<TD::Types::ClosedVectorPath>, nil] Sticker set thumbnail's outline represented as a
  #   list of closed vector paths; may be empty.
  #   The coordinate system origin is in the upper-left corner.
  # @attr is_installed [Boolean] True, if the sticker set has been installed by the current user.
  # @attr is_archived [Boolean] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @attr is_official [Boolean] True, if the sticker set is official.
  # @attr is_animated [Boolean] True, is the stickers in the set are animated.
  # @attr is_masks [Boolean] True, if the stickers in the set are masks.
  # @attr is_viewed [Boolean] True for already viewed trending sticker sets.
  # @attr size [Integer] Total number of stickers in the set.
  # @attr covers [Array<TD::Types::Sticker>] Up to the first 5 stickers from the set, depending on the context.
  #   If the application needs more stickers the full sticker set needs to be requested.
  class StickerSetInfo < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :name, TD::Types::String
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :thumbnail_outline, TD::Types::Array.of(TD::Types::ClosedVectorPath).optional.default(nil)
    attribute :is_installed, TD::Types::Bool
    attribute :is_archived, TD::Types::Bool
    attribute :is_official, TD::Types::Bool
    attribute :is_animated, TD::Types::Bool
    attribute :is_masks, TD::Types::Bool
    attribute :is_viewed, TD::Types::Bool
    attribute :size, TD::Types::Coercible::Integer
    attribute :covers, TD::Types::Array.of(TD::Types::Sticker)
  end
end
