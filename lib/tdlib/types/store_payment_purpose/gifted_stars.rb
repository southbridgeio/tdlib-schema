module TD::Types
  # The user buying Telegram Stars for other users.
  #
  # @attr user_id [Integer] Identifier of the user to which Telegram Stars are gifted.
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  # @attr star_count [Integer] Number of bought Telegram Stars.
  class StorePaymentPurpose::GiftedStars < StorePaymentPurpose
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
