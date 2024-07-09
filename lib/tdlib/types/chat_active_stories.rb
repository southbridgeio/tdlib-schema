module TD::Types
  # Describes active stories posted by a chat.
  #
  # @attr chat_id [Integer] Identifier of the chat that posted the stories.
  # @attr list [TD::Types::StoryList, nil] Identifier of the story list in which the stories are shown; may be null if
  #   the stories aren't shown in a story list.
  # @attr order [Integer] A parameter used to determine order of the stories in the story list; 0 if the stories
  #   doesn't need to be shown in the story list.
  #   Stories must be sorted by the pair (order, story_sender_chat_id) in descending order.
  # @attr max_read_story_id [Integer] Identifier of the last read active story.
  # @attr stories [Array<TD::Types::StoryInfo>] Basic information about the stories; use getStory to get full
  #   information about the stories.
  #   The stories are in a chronological order (i.e., in order of increasing story identifiers).
  class ChatActiveStories < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :list, TD::Types::StoryList.optional.default(nil)
    attribute :order, TD::Types::Coercible::Integer
    attribute :max_read_story_id, TD::Types::Coercible::Integer
    attribute :stories, TD::Types::Array.of(TD::Types::StoryInfo)
  end
end
