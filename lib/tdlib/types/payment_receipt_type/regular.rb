module TD::Types
  # The payment was done using a third-party payment provider.
  #
  # @attr payment_provider_user_id [Integer] User identifier of the payment provider bot.
  # @attr invoice [TD::Types::Invoice] Information about the invoice.
  # @attr order_info [TD::Types::OrderInfo, nil] Order information; may be null.
  # @attr shipping_option [TD::Types::ShippingOption, nil] Chosen shipping option; may be null.
  # @attr credentials_title [TD::Types::String] Title of the saved credentials chosen by the buyer.
  # @attr tip_amount [Integer] The amount of tip chosen by the buyer in the smallest units of the currency.
  class PaymentReceiptType::Regular < PaymentReceiptType
    attribute :payment_provider_user_id, TD::Types::Coercible::Integer
    attribute :invoice, TD::Types::Invoice
    attribute :order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :shipping_option, TD::Types::ShippingOption.optional.default(nil)
    attribute :credentials_title, TD::Types::String
    attribute :tip_amount, TD::Types::Coercible::Integer
  end
end
