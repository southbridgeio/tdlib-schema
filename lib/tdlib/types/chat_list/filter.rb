module TD::Types
  # A list of chats belonging to a chat filter.
  #
  # @attr chat_filter_id [Integer] Chat filter identifier.
  class ChatList::Filter < ChatList
    attribute :chat_filter_id, TD::Types::Integer
  end
end
