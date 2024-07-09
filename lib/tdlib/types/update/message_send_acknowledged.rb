module TD::Types
  # A request to send a message has reached the Telegram server.
  # This doesn't mean that the message will be sent successfully.
  # This update is sent only if the option "use_quick_ack" is set to true.
  # This update may be sent multiple times for the same message.
  #
  # @attr chat_id [Integer] The chat identifier of the sent message.
  # @attr message_id [Integer] A temporary message identifier.
  class Update::MessageSendAcknowledged < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
