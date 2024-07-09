module TD::Types
  # Contains information about a successful payment.
  #
  # @attr product_info [TD::Types::ProductInfo] Information about the product.
  # @attr date [Integer] Point in time (Unix timestamp) when the payment was made.
  # @attr seller_bot_user_id [Integer] User identifier of the seller bot.
  # @attr type [TD::Types::PaymentReceiptType] Type of the payment receipt.
  class PaymentReceipt < Base
    attribute :product_info, TD::Types::ProductInfo
    attribute :date, TD::Types::Coercible::Integer
    attribute :seller_bot_user_id, TD::Types::Coercible::Integer
    attribute :type, TD::Types::PaymentReceiptType
  end
end
