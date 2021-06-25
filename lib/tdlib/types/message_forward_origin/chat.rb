module TD::Types
  # The message was originally sent by an anonymous chat administrator on behalf of the chat.
  #
  # @attr sender_chat_id [Integer] Identifier of the chat that originally sent the message.
  # @attr author_signature [String] Original message author signature.
  class MessageForwardOrigin::Chat < MessageForwardOrigin
    attribute :sender_chat_id, TD::Types::Integer
    attribute :author_signature, TD::Types::String
  end
end
