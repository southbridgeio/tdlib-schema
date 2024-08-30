module TD::Types
  # A forward of the story as a message.
  #
  # @attr message [TD::Types::Message] The message with story forward.
  class StoryInteractionType::Forward < StoryInteractionType
    attribute :message, TD::Types::Message
  end
end
