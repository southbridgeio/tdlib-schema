module TD::Types
  # User changed its reactions on a message with public reactions; for bots only.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr actor_id [TD::Types::MessageSender] Identifier of the user or chat that changed reactions.
  # @attr date [Integer] Point in time (Unix timestamp) when the reactions were changed.
  # @attr old_reaction_types [Array<TD::Types::ReactionType>] Old list of chosen reactions.
  # @attr new_reaction_types [Array<TD::Types::ReactionType>] New list of chosen reactions.
  class Update::MessageReaction < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :actor_id, TD::Types::MessageSender
    attribute :date, TD::Types::Coercible::Integer
    attribute :old_reaction_types, TD::Types::Array.of(TD::Types::ReactionType)
    attribute :new_reaction_types, TD::Types::Array.of(TD::Types::ReactionType)
  end
end
