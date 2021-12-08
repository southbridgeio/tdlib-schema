module TD::Types
  # Contains information about a successful payment.
  #
  # @attr title [TD::Types::String] Product title.
  # @attr description [TD::Types::String] Product description.
  # @attr photo [TD::Types::Photo, nil] Product photo; may be null.
  # @attr date [Integer] Point in time (Unix timestamp) when the payment was made.
  # @attr seller_bot_user_id [Integer] User identifier of the seller bot.
  # @attr payments_provider_user_id [Integer] User identifier of the payment provider bot.
  # @attr invoice [TD::Types::Invoice] Information about the invoice.
  # @attr order_info [TD::Types::OrderInfo, nil] Order information; may be null.
  # @attr shipping_option [TD::Types::ShippingOption, nil] Chosen shipping option; may be null.
  # @attr credentials_title [TD::Types::String] Title of the saved credentials chosen by the buyer.
  # @attr tip_amount [Integer] The amount of tip chosen by the buyer in the smallest units of the currency.
  class PaymentReceipt < Base
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :date, TD::Types::Coercible::Integer
    attribute :seller_bot_user_id, TD::Types::Coercible::Integer
    attribute :payments_provider_user_id, TD::Types::Coercible::Integer
    attribute :invoice, TD::Types::Invoice
    attribute :order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :shipping_option, TD::Types::ShippingOption.optional.default(nil)
    attribute :credentials_title, TD::Types::String
    attribute :tip_amount, TD::Types::Coercible::Integer
  end
end
