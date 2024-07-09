module TD::Types
  # Describes an option for buying Telegram stars.
  # Use telegramPaymentPurposeStars for out-of-store payments.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code for the payment.
  # @attr amount [Integer] The amount to pay, in the smallest units of the currency.
  # @attr star_count [Integer] Number of Telegram stars that will be purchased.
  # @attr store_product_id [TD::Types::String, nil] Identifier of the store product associated with the option; may be
  #   empty if none.
  # @attr is_additional [Boolean] True, if the option must be shown only in the full list of payment options.
  class StarPaymentOption < Base
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :store_product_id, TD::Types::String.optional.default(nil)
    attribute :is_additional, TD::Types::Bool
  end
end
