module TD::Types
  # Describes a message to be replied in the same chat and forum topic.
  #
  # @attr message_id [Integer] The identifier of the message to be replied in the same chat and forum topic.
  #   A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied.
  # @attr quote [TD::Types::InputTextQuote] Quote from the message to be replied; pass null if none.
  #   Must always be null for replies in secret chats.
  class InputMessageReplyTo::Message < InputMessageReplyTo
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :quote, TD::Types::InputTextQuote
  end
end
