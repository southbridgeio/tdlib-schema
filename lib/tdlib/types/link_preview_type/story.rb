module TD::Types
  # The link is a link to a story.
  # Link preview description is unavailable.
  #
  # @attr story_sender_chat_id [Integer] The identifier of the chat that posted the story.
  # @attr story_id [Integer] Story identifier.
  class LinkPreviewType::Story < LinkPreviewType
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
