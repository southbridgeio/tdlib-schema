module TD::Types
  # Telegram Premium was gifted to a user.
  #
  # @attr gifter_user_id [Integer] The identifier of a user that gifted Telegram Premium; 0 if the gift was anonymous
  #   or is outgoing.
  # @attr receiver_user_id [Integer] The identifier of a user that received Telegram Premium; 0 if the gift is
  #   incoming.
  # @attr currency [TD::Types::String] Currency for the paid amount.
  # @attr amount [Integer] The paid amount, in the smallest units of the currency.
  # @attr cryptocurrency [TD::Types::String, nil] Cryptocurrency used to pay for the gift; may be empty if none.
  # @attr cryptocurrency_amount [Integer] The paid amount, in the smallest units of the cryptocurrency; 0 if none.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the message; may be null if unknown.
  class MessageContent::GiftedPremium < MessageContent
    attribute :gifter_user_id, TD::Types::Coercible::Integer
    attribute :receiver_user_id, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :cryptocurrency, TD::Types::String.optional.default(nil)
    attribute :cryptocurrency_amount, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
