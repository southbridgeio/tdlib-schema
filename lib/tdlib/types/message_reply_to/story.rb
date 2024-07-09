module TD::Types
  # Describes a story replied by a given message.
  #
  # @attr story_sender_chat_id [Integer] The identifier of the sender of the story.
  # @attr story_id [Integer] The identifier of the story.
  class MessageReplyTo::Story < MessageReplyTo
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
