module TD::Types
  # A reaction with a custom emoji.
  #
  # @attr custom_emoji_id [Integer] Unique identifier of the custom emoji.
  class ReactionType::CustomEmoji < ReactionType
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
