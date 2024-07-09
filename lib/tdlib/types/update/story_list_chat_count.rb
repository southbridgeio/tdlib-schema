module TD::Types
  # Number of chats in a story list has changed.
  #
  # @attr story_list [TD::Types::StoryList] The story list.
  # @attr chat_count [Integer] Approximate total number of chats with active stories in the list.
  class Update::StoryListChatCount < Update
    attribute :story_list, TD::Types::StoryList
    attribute :chat_count, TD::Types::Coercible::Integer
  end
end
