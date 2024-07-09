module TD::Types
  # The original story was a public story with known sender.
  #
  # @attr chat_id [Integer] Identifier of the chat that posted original story.
  # @attr story_id [Integer] Story identifier of the original story.
  class StoryOrigin::PublicStory < StoryOrigin
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
