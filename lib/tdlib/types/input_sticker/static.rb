module TD::Types
  # A static sticker in PNG format, which will be converted to WEBP server-side.
  #
  # @attr sticker [TD::Types::InputFile] PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512
  #   square.
  # @attr emojis [TD::Types::String] Emojis corresponding to the sticker.
  # @attr mask_position [TD::Types::MaskPosition] For masks, position where the mask is placed; pass null if
  #   unspecified.
  class InputSticker::Static < InputSticker
    attribute :sticker, TD::Types::InputFile
    attribute :emojis, TD::Types::String
    attribute :mask_position, TD::Types::MaskPosition
  end
end
