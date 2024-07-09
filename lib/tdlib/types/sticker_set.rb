module TD::Types
  # Represents a sticker set.
  #
  # @attr id [Integer] Identifier of the sticker set.
  # @attr title [TD::Types::String] Title of the sticker set.
  # @attr name [TD::Types::String] Name of the sticker set.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Sticker set thumbnail in WEBP, TGS, or WEBM format with width and
  #   height 100; may be null.
  #   The file can be downloaded only before the thumbnail is changed.
  # @attr thumbnail_outline [Array<TD::Types::ClosedVectorPath>, nil] Sticker set thumbnail's outline represented as a
  #   list of closed vector paths; may be empty.
  #   The coordinate system origin is in the upper-left corner.
  # @attr is_owned [Boolean] True, if the sticker set is owned by the current user.
  # @attr is_installed [Boolean] True, if the sticker set has been installed by the current user.
  # @attr is_archived [Boolean] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @attr is_official [Boolean] True, if the sticker set is official.
  # @attr sticker_type [TD::Types::StickerType] Type of the stickers in the set.
  # @attr needs_repainting [Boolean] True, if stickers in the sticker set are custom emoji that must be repainted; for
  #   custom emoji sticker sets only.
  # @attr is_allowed_as_chat_emoji_status [Boolean] True, if stickers in the sticker set are custom emoji that can be
  #   used as chat emoji status; for custom emoji sticker sets only.
  # @attr is_viewed [Boolean] True for already viewed trending sticker sets.
  # @attr stickers [Array<TD::Types::Sticker>] List of stickers in this set.
  # @attr emojis [Array<TD::Types::Emojis>] A list of emojis corresponding to the stickers in the same order.
  #   The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  class StickerSet < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :name, TD::Types::String
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :thumbnail_outline, TD::Types::Array.of(TD::Types::ClosedVectorPath).optional.default(nil)
    attribute :is_owned, TD::Types::Bool
    attribute :is_installed, TD::Types::Bool
    attribute :is_archived, TD::Types::Bool
    attribute :is_official, TD::Types::Bool
    attribute :sticker_type, TD::Types::StickerType
    attribute :needs_repainting, TD::Types::Bool
    attribute :is_allowed_as_chat_emoji_status, TD::Types::Bool
    attribute :is_viewed, TD::Types::Bool
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
    attribute :emojis, TD::Types::Array.of(TD::Types::Emojis)
  end
end
