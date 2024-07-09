module TD::Types
  # Reactions added to a message with anonymous reactions have changed; for bots only.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr date [Integer] Point in time (Unix timestamp) when the reactions were changed.
  # @attr reactions [Array<TD::Types::MessageReaction>] The list of reactions added to the message.
  class Update::MessageReactions < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :reactions, TD::Types::Array.of(TD::Types::MessageReaction)
  end
end
