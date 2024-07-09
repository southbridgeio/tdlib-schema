module TD::Types
  # Describes a sticker.
  #
  # @attr id [Integer] Unique sticker identifier within the set; 0 if none.
  # @attr set_id [Integer] Identifier of the sticker set to which the sticker belongs; 0 if none.
  # @attr width [Integer] Sticker width; as defined by the sender.
  # @attr height [Integer] Sticker height; as defined by the sender.
  # @attr emoji [TD::Types::String] Emoji corresponding to the sticker.
  # @attr format [TD::Types::StickerFormat] Sticker format.
  # @attr full_type [TD::Types::StickerFullType] Sticker's full type.
  # @attr outline [Array<TD::Types::ClosedVectorPath>, nil] Sticker's outline represented as a list of closed vector
  #   paths; may be empty.
  #   The coordinate system origin is in the upper-left corner.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Sticker thumbnail in WEBP or JPEG format; may be null.
  # @attr sticker [TD::Types::File] File containing the sticker.
  class Sticker < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :set_id, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :emoji, TD::Types::String
    attribute :format, TD::Types::StickerFormat
    attribute :full_type, TD::Types::StickerFullType
    attribute :outline, TD::Types::Array.of(TD::Types::ClosedVectorPath).optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :sticker, TD::Types::File
  end
end
