module TD::Types
  # Contains basic information about a story.
  #
  # @attr story_id [Integer] Unique story identifier among stories of the given sender.
  # @attr date [Integer] Point in time (Unix timestamp) when the story was published.
  # @attr is_for_close_friends [Boolean] True, if the story is available only to close friends.
  class StoryInfo < Base
    attribute :story_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :is_for_close_friends, TD::Types::Bool
  end
end
