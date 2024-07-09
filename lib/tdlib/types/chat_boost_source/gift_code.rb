module TD::Types
  # The chat created a Telegram Premium gift code for a user.
  #
  # @attr user_id [Integer] Identifier of a user, for which the gift code was created.
  # @attr gift_code [TD::Types::String] The created Telegram Premium gift code, which is known only if this is a gift
  #   code for the current user, or it has already been claimed.
  class ChatBoostSource::GiftCode < ChatBoostSource
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :gift_code, TD::Types::String
  end
end
