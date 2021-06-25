module TD::Types
  # The last message of a chat was changed.
  # If last_message is null, then the last message in the chat became unknown.
  # Some new unknown messages might be added to the chat in this case.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr last_message [TD::Types::Message, nil] The new last message in the chat; may be null.
  # @attr positions [Array<TD::Types::ChatPosition>] The new chat positions in the chat lists.
  class Update::ChatLastMessage < Update
    attribute :chat_id, TD::Types::Integer
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :positions, TD::Types::Array.of(TD::Types::ChatPosition)
  end
end
