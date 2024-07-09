module TD::Types
  # The user gifting Telegram Premium to another user.
  #
  # @attr user_id [Integer] Identifier of the user to which Premium was gifted.
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  class StorePaymentPurpose::GiftedPremium < StorePaymentPurpose
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
  end
end
