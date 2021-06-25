module TD::Types
  # The position of a chat in a chat list has changed.
  # Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr position [TD::Types::ChatPosition] New chat position.
  #   If new order is 0, then the chat needs to be removed from the list.
  class Update::ChatPosition < Update
    attribute :chat_id, TD::Types::Integer
    attribute :position, TD::Types::ChatPosition
  end
end
