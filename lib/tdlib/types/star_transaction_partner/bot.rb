module TD::Types
  # The transaction is a transaction with a bot.
  #
  # @attr bot_user_id [Integer] Identifier of the bot.
  # @attr product_info [TD::Types::ProductInfo, nil] Information about the bought product; may be null if not
  #   applicable.
  # @attr invoice_payload [String] Invoice payload; for bots only.
  class StarTransactionPartner::Bot < StarTransactionPartner
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :product_info, TD::Types::ProductInfo.optional.default(nil)
    attribute :invoice_payload, TD::Types::Coercible::String
  end
end
