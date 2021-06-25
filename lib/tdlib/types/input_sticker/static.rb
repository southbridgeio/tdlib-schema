module TD::Types
  # A static sticker in PNG format, which will be converted to WEBP server-side.
  #
  # @attr sticker [TD::Types::InputFile] PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512
  #   square.
  # @attr emojis [String] Emojis corresponding to the sticker.
  # @attr mask_position [TD::Types::MaskPosition, nil] For masks, position where the mask should be placed; may be
  #   null.
  class InputSticker::Static < InputSticker
    attribute :sticker, TD::Types::InputFile
    attribute :emojis, TD::Types::String
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
  end
end
