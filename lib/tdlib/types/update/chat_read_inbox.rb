module TD::Types
  # Incoming messages were read or the number of unread messages has been changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming message.
  # @attr unread_count [Integer] The number of unread messages left in the chat.
  class Update::ChatReadInbox < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :last_read_inbox_message_id, TD::Types::Coercible::Integer
    attribute :unread_count, TD::Types::Coercible::Integer
  end
end
