module TD::Types
  # Represents a list of emoji categories.
  #
  # @attr categories [Array<TD::Types::EmojiCategory>] List of categories.
  class EmojiCategories < Base
    attribute :categories, TD::Types::Array.of(TD::Types::EmojiCategory)
  end
end
