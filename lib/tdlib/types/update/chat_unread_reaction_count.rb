module TD::Types
  # The chat unread_reaction_count has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr unread_reaction_count [Integer] The number of messages with unread reactions left in the chat.
  class Update::ChatUnreadReactionCount < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :unread_reaction_count, TD::Types::Coercible::Integer
  end
end
