module TD::Types
  # The message sender that is selected to send messages in a chat has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_sender_id [TD::Types::MessageSender, nil] New value of message_sender_id; may be null if the user
  #   can't change message sender.
  class Update::ChatMessageSender < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_sender_id, TD::Types::MessageSender.optional.default(nil)
  end
end
