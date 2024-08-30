module TD::Types
  # A repost of the story as a story.
  #
  # @attr story [TD::Types::Story] The reposted story.
  class StoryInteractionType::Repost < StoryInteractionType
    attribute :story, TD::Types::Story
  end
end
