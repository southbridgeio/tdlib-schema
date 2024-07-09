module TD::Types
  # The position of a chat in a chat list has changed.
  # An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr position [TD::Types::ChatPosition] New chat position.
  #   If new order is 0, then the chat needs to be removed from the list.
  class Update::ChatPosition < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :position, TD::Types::ChatPosition
  end
end
