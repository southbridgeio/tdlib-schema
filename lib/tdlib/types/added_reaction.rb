module TD::Types
  # Represents a reaction applied to a message.
  #
  # @attr type [TD::Types::ReactionType] Type of the reaction.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the chat member, applied the reaction.
  # @attr is_outgoing [Boolean] True, if the reaction was added by the current user.
  # @attr date [Integer] Point in time (Unix timestamp) when the reaction was added.
  class AddedReaction < Base
    attribute :type, TD::Types::ReactionType
    attribute :sender_id, TD::Types::MessageSender
    attribute :is_outgoing, TD::Types::Bool
    attribute :date, TD::Types::Coercible::Integer
  end
end
