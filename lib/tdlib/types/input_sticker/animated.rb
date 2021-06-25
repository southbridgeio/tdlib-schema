module TD::Types
  # An animated sticker in TGS format.
  #
  # @attr sticker [TD::Types::InputFile] File with the animated sticker.
  #   Only local or uploaded within a week files are supported.
  #   See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  # @attr emojis [String] Emojis corresponding to the sticker.
  class InputSticker::Animated < InputSticker
    attribute :sticker, TD::Types::InputFile
    attribute :emojis, TD::Types::String
  end
end
