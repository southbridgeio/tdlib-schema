module TD::Types
  # A story became inaccessible.
  #
  # @attr story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @attr story_id [Integer] Story identifier.
  class Update::StoryDeleted < Update
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
