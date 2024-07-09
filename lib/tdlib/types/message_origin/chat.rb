module TD::Types
  # The message was originally sent on behalf of a chat.
  #
  # @attr sender_chat_id [Integer] Identifier of the chat that originally sent the message.
  # @attr author_signature [TD::Types::String] For messages originally sent by an anonymous chat administrator,
  #   original message author signature.
  class MessageOrigin::Chat < MessageOrigin
    attribute :sender_chat_id, TD::Types::Coercible::Integer
    attribute :author_signature, TD::Types::String
  end
end
