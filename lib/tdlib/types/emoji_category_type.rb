module TD::Types
  # Describes type of emoji category.
  class EmojiCategoryType < Base
    %w[
      default
      regular_stickers
      emoji_status
      chat_photo
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/emoji_category_type/#{type}"
    end
  end
end
