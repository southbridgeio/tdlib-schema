module TD::Types
  # Contains full information about sticker type.
  class StickerFullType < Base
    %w[
      regular
      mask
      custom_emoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/sticker_full_type/#{type}"
    end
  end
end
