module TD::Types
  # A chat was added to a chat list.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr chat_list [TD::Types::ChatList] The chat list to which the chat was added.
  class Update::ChatAddedToList < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :chat_list, TD::Types::ChatList
  end
end
