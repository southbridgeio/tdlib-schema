module TD::Types
  # Describes type of sticker.
  class StickerType < Base
    %w[
      regular
      mask
      custom_emoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/sticker_type/#{type}"
    end
  end
end
