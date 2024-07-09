module TD::Types
  # A message with a forwarded story.
  # Stories can't be sent to secret chats.
  # A story can be forwarded only if story.can_be_forwarded.
  #
  # @attr story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @attr story_id [Integer] Story identifier.
  class InputMessageContent::Story < InputMessageContent
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
