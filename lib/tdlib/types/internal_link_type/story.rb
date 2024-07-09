module TD::Types
  # The link is a link to a story.
  # Call searchPublicChat with the given sender username, then call getStory with the received chat identifier and the
  #   given story identifier, then show the story if received.
  #
  # @attr story_sender_username [TD::Types::String] Username of the sender of the story.
  # @attr story_id [Integer] Story identifier.
  class InternalLinkType::Story < InternalLinkType
    attribute :story_sender_username, TD::Types::String
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
