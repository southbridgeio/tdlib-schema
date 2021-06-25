module TD::Types
  # Contains a list of chat lists.
  #
  # @attr chat_lists [Array<TD::Types::ChatList>] List of chat lists.
  class ChatLists < Base
    attribute :chat_lists, TD::Types::Array.of(TD::Types::ChatList)
  end
end
