module TD::Types
  # A story has been successfully sent.
  #
  # @attr story [TD::Types::Story] The sent story.
  # @attr old_story_id [Integer] The previous temporary story identifier.
  class Update::StorySendSucceeded < Update
    attribute :story, TD::Types::Story
    attribute :old_story_id, TD::Types::Coercible::Integer
  end
end
