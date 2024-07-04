module TD::Types
  # Describes a sticker.
  #
  # @attr set_id [Integer] The identifier of the sticker set to which the sticker belongs; 0 if none.
  # @attr width [Integer] Sticker width; as defined by the sender.
  # @attr height [Integer] Sticker height; as defined by the sender.
  # @attr emoji [TD::Types::String] Emoji corresponding to the sticker.
  # @attr is_animated [Boolean] True, if the sticker is an animated sticker in TGS format.
  # @attr is_mask [Boolean] True, if the sticker is a mask.
  # @attr mask_position [TD::Types::MaskPosition, nil] Position where the mask is placed; may be null.
  # @attr outline [Array<TD::Types::ClosedVectorPath>, nil] Sticker's outline represented as a list of closed vector
  #   paths; may be empty.
  #   The coordinate system origin is in the upper-left corner.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Sticker thumbnail in WEBP or JPEG format; may be null.
  # @attr sticker [TD::Types::File] File containing the sticker.
  class Sticker < Base
    attribute :set_id, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :emoji, TD::Types::String
    attribute :is_animated, TD::Types::Bool
    attribute :is_mask, TD::Types::Bool
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
    attribute :outline, TD::Types::Array.of(TD::Types::ClosedVectorPath).optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :sticker, TD::Types::File
  end
end
