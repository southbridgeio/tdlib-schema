module TD::Types
  # The list of unread reactions added to a message was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr unread_reactions [Array<TD::Types::UnreadReaction>] The new list of unread reactions.
  # @attr unread_reaction_count [Integer] The new number of messages with unread reactions left in the chat.
  class Update::MessageUnreadReactions < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :unread_reactions, TD::Types::Array.of(TD::Types::UnreadReaction)
    attribute :unread_reaction_count, TD::Types::Coercible::Integer
  end
end
