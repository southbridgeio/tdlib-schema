module TD::Types
  # A chat was removed from a chat list.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr chat_list [TD::Types::ChatList] The chat list from which the chat was removed.
  class Update::ChatRemovedFromList < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :chat_list, TD::Types::ChatList
  end
end
