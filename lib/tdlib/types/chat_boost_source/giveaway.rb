module TD::Types
  # The chat created a Telegram Premium giveaway.
  #
  # @attr user_id [Integer] Identifier of a user that won in the giveaway; 0 if none.
  # @attr gift_code [TD::Types::String] The created Telegram Premium gift code if it was used by the user or can be
  #   claimed by the current user; an empty string otherwise.
  # @attr giveaway_message_id [Integer] Identifier of the corresponding giveaway message; can be an identifier of a
  #   deleted message.
  # @attr is_unclaimed [Boolean] True, if the winner for the corresponding Telegram Premium subscription wasn't chosen,
  #   because there were not enough participants.
  class ChatBoostSource::Giveaway < ChatBoostSource
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :gift_code, TD::Types::String
    attribute :giveaway_message_id, TD::Types::Coercible::Integer
    attribute :is_unclaimed, TD::Types::Bool
  end
end
