module TD::Types
  # The message was sent on behalf of a chat.
  #
  # @attr chat_id [Integer] Identifier of the chat that sent the message.
  class MessageSender::Chat < MessageSender
    attribute :chat_id, TD::Types::Integer
  end
end
