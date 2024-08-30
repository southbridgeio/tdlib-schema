module TD::Types
  # The user can't participate in the giveaway, because they have already been member of the chat.
  #
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined the chat.
  class PremiumGiveawayParticipantStatus::AlreadyWasMember < PremiumGiveawayParticipantStatus
    attribute :joined_chat_date, TD::Types::Coercible::Integer
  end
end
