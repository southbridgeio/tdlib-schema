module TD::Types
  # The user can't participate in the giveaway, because they are an administrator in one of the chats that created the
  #   giveaway.
  #
  # @attr chat_id [Integer] Identifier of the chat administered by the user.
  class PremiumGiveawayParticipantStatus::Administrator < PremiumGiveawayParticipantStatus
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
