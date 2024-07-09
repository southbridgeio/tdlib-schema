module TD::Types
  # Represents a list of stories.
  #
  # @attr total_count [Integer] Approximate total number of stories found.
  # @attr stories [Array<TD::Types::Story>] The list of stories.
  # @attr pinned_story_ids [Array<Integer>] Identifiers of the pinned stories; returned only in
  #   getChatPostedToChatPageStories with from_story_id == 0.
  class Stories < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :stories, TD::Types::Array.of(TD::Types::Story)
    attribute :pinned_story_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
