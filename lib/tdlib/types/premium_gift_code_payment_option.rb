module TD::Types
  # Describes an option for creating Telegram Premium gift codes.
  # Use telegramPaymentPurposePremiumGiftCodes for out-of-store payments.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code for Telegram Premium gift code payment.
  # @attr amount [Integer] The amount to pay, in the smallest units of the currency.
  # @attr user_count [Integer] Number of users which will be able to activate the gift codes.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active.
  # @attr store_product_id [TD::Types::String, nil] Identifier of the store product associated with the option; may be
  #   empty if none.
  # @attr store_product_quantity [Integer] Number of times the store product must be paid.
  class PremiumGiftCodePaymentOption < Base
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :user_count, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :store_product_id, TD::Types::String.optional.default(nil)
    attribute :store_product_quantity, TD::Types::Coercible::Integer
  end
end
