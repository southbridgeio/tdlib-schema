module TD::Types
  # The chat available reactions were changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr available_reactions [TD::Types::ChatAvailableReactions] The new reactions, available in the chat.
  class Update::ChatAvailableReactions < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :available_reactions, TD::Types::ChatAvailableReactions
  end
end
