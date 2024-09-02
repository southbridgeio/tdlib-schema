module TD::Types
  # Represents an emoji with its keyword.
  #
  # @attr emoji [TD::Types::String] The emoji.
  # @attr keyword [TD::Types::String] The keyword.
  class EmojiKeyword < Base
    attribute :emoji, TD::Types::String
    attribute :keyword, TD::Types::String
  end
end
