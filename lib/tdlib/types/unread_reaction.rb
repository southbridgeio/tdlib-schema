module TD::Types
  # Contains information about an unread reaction to a message.
  #
  # @attr type [TD::Types::ReactionType] Type of the reaction.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the sender, added the reaction.
  # @attr is_big [Boolean] True, if the reaction was added with a big animation.
  class UnreadReaction < Base
    attribute :type, TD::Types::ReactionType
    attribute :sender_id, TD::Types::MessageSender
    attribute :is_big, TD::Types::Bool
  end
end
