module TD::Types
  # The last message of a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr last_message [TD::Types::Message, nil] The new last message in the chat; may be null if the last message
  #   became unknown.
  #   While the last message is unknown, new messages can be added to the chat without corresponding
  #   {TD::Types::Update::NewMessage} update.
  # @attr positions [Array<TD::Types::ChatPosition>] The new chat positions in the chat lists.
  class Update::ChatLastMessage < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :positions, TD::Types::Array.of(TD::Types::ChatPosition)
  end
end
