module TD::Types
  # Describes an option for buying Telegram Premium to a user.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code for Telegram Premium subscription payment.
  # @attr amount [Integer] The amount to pay, in the smallest units of the currency.
  # @attr discount_percentage [Integer] The discount associated with this option, as a percentage.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active.
  # @attr store_product_id [TD::Types::String] Identifier of the store product associated with the option.
  # @attr payment_link [TD::Types::InternalLinkType, nil] An internal link to be opened for buying Telegram Premium to
  #   the user if store payment isn't possible; may be null if direct payment isn't available.
  class PremiumPaymentOption < Base
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :discount_percentage, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :store_product_id, TD::Types::String
    attribute :payment_link, TD::Types::InternalLinkType.optional.default(nil)
  end
end
