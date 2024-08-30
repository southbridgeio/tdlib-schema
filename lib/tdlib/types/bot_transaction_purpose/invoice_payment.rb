module TD::Types
  # User bought a product from the bot.
  #
  # @attr product_info [TD::Types::ProductInfo, nil] Information about the bought product; may be null if not
  #   applicable.
  # @attr invoice_payload [String] Invoice payload; for bots only.
  class BotTransactionPurpose::InvoicePayment < BotTransactionPurpose
    attribute :product_info, TD::Types::ProductInfo.optional.default(nil)
    attribute :invoice_payload, TD::Types::Coercible::String
  end
end
