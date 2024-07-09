module TD::Types
  # An area pointing to a message.
  #
  # @attr chat_id [Integer] Identifier of the chat with the message.
  #   Currently, the chat must be a supergroup or a channel chat.
  # @attr message_id [Integer] Identifier of the message.
  #   Only successfully sent non-scheduled messages can be specified.
  class InputStoryAreaType::Message < InputStoryAreaType
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
