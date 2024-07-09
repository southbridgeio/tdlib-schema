module TD::Types
  # Describes an emoji category.
  #
  # @attr name [TD::Types::String] Name of the category.
  # @attr icon [TD::Types::Sticker] Custom emoji sticker, which represents icon of the category.
  # @attr source [TD::Types::EmojiCategorySource] Source of stickers for the emoji category.
  # @attr is_greeting [Boolean] True, if the category must be shown first when choosing a sticker for the start page.
  class EmojiCategory < Base
    attribute :name, TD::Types::String
    attribute :icon, TD::Types::Sticker
    attribute :source, TD::Types::EmojiCategorySource
    attribute :is_greeting, TD::Types::Bool
  end
end
