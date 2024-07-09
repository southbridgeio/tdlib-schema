module TD::Types
  # A list of chats added to a chat folder.
  #
  # @attr chat_folder_id [Integer] Chat folder identifier.
  class ChatList::Folder < ChatList
    attribute :chat_folder_id, TD::Types::Coercible::Integer
  end
end
