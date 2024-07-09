module TD::Types
  # A Telegram Premium giveaway without public winners has been completed for the chat.
  #
  # @attr giveaway_message_id [Integer] Identifier of the message with the giveaway; can be 0 if the message was
  #   deleted.
  # @attr winner_count [Integer] Number of winners in the giveaway.
  # @attr unclaimed_prize_count [Integer] Number of undistributed prizes.
  class MessageContent::PremiumGiveawayCompleted < MessageContent
    attribute :giveaway_message_id, TD::Types::Coercible::Integer
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :unclaimed_prize_count, TD::Types::Coercible::Integer
  end
end
