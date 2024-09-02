module TD::Types
  # A user with Telegram Premium subscription or gifted Telegram Premium boosted the chat.
  #
  # @attr user_id [Integer] Identifier of the user.
  class ChatBoostSource::Premium < ChatBoostSource
    attribute :user_id, TD::Types::Coercible::Integer
  end
end
