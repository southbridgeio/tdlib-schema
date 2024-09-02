module TD::Types
  # A payment has been refunded.
  #
  # @attr owner_id [TD::Types::MessageSender] Identifier of the previous owner of the Telegram Stars that refunds them.
  # @attr currency [TD::Types::String] Currency for the price of the product.
  # @attr total_amount [Integer] Total price for the product, in the smallest units of the currency.
  # @attr invoice_payload [String] Invoice payload; only for bots.
  # @attr telegram_payment_charge_id [TD::Types::String] Telegram payment identifier.
  # @attr provider_payment_charge_id [TD::Types::String] Provider payment identifier.
  class MessageContent::PaymentRefunded < MessageContent
    attribute :owner_id, TD::Types::MessageSender
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Coercible::Integer
    attribute :invoice_payload, TD::Types::Coercible::String
    attribute :telegram_payment_charge_id, TD::Types::String
    attribute :provider_payment_charge_id, TD::Types::String
  end
end
