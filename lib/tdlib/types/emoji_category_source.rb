module TD::Types
  # Describes source of stickers for an emoji category.
  class EmojiCategorySource < Base
    %w[
      search
      premium
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/emoji_category_source/#{type}"
    end
  end
end
