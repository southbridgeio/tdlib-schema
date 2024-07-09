module TD::Types
  # A sticker to be added to a sticker set.
  #
  # @attr sticker [TD::Types::InputFile] File with the sticker; must fit in a 512x512 square.
  #   For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.
  #   See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  # @attr format [TD::Types::StickerFormat] Format of the sticker.
  # @attr emojis [TD::Types::String] String with 1-20 emoji corresponding to the sticker.
  # @attr mask_position [TD::Types::MaskPosition] Position where the mask is placed; pass null if not specified.
  # @attr keywords [Array<TD::Types::String>] List of up to 20 keywords with total length up to 64 characters, which
  #   can be used to find the sticker.
  class InputSticker < Base
    attribute :sticker, TD::Types::InputFile
    attribute :format, TD::Types::StickerFormat
    attribute :emojis, TD::Types::String
    attribute :mask_position, TD::Types::MaskPosition
    attribute :keywords, TD::Types::Array.of(TD::Types::String)
  end
end
