module TD::Types
  # Describes type of sticker, which was used to create a chat photo.
  class ChatPhotoStickerType < Base
    %w[
      regular_or_mask
      custom_emoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_photo_sticker_type/#{type}"
    end
  end
end
