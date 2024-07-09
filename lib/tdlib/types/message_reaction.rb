module TD::Types
  # Contains information about a reaction to a message.
  #
  # @attr type [TD::Types::ReactionType] Type of the reaction.
  # @attr total_count [Integer] Number of times the reaction was added.
  # @attr is_chosen [Boolean] True, if the reaction is chosen by the current user.
  # @attr used_sender_id [TD::Types::MessageSender, nil] Identifier of the message sender used by the current user to
  #   add the reaction; may be null if unknown or the reaction isn't chosen.
  # @attr recent_sender_ids [Array<TD::Types::MessageSender>] Identifiers of at most 3 recent message senders, added
  #   the reaction; available in private, basic group and supergroup chats.
  class MessageReaction < Base
    attribute :type, TD::Types::ReactionType
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :is_chosen, TD::Types::Bool
    attribute :used_sender_id, TD::Types::MessageSender.optional.default(nil)
    attribute :recent_sender_ids, TD::Types::Array.of(TD::Types::MessageSender)
  end
end
