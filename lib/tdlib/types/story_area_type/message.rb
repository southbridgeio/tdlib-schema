module TD::Types
  # An area pointing to a message.
  #
  # @attr chat_id [Integer] Identifier of the chat with the message.
  # @attr message_id [Integer] Identifier of the message.
  class StoryAreaType::Message < StoryAreaType
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
