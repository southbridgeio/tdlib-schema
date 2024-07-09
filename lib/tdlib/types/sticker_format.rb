module TD::Types
  # Describes format of a sticker.
  class StickerFormat < Base
    %w[
      webp
      tgs
      webm
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/sticker_format/#{type}"
    end
  end
end
