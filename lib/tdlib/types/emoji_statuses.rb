module TD::Types
  # Contains a list of custom emoji identifiers for emoji statuses.
  #
  # @attr custom_emoji_ids [Array<Integer>] The list of custom emoji identifiers.
  class EmojiStatuses < Base
    attribute :custom_emoji_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
