module TD::Types
  # A message with a forwarded story.
  #
  # @attr story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @attr story_id [Integer] Story identifier.
  # @attr via_mention [Boolean] True, if the story was automatically forwarded because of a mention of the user.
  class MessageContent::Story < MessageContent
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
    attribute :via_mention, TD::Types::Bool
  end
end
