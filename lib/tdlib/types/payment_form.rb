module TD::Types
  # Contains information about an invoice payment form.
  #
  # @attr id [Integer] The payment form identifier.
  # @attr type [TD::Types::PaymentFormType] Type of the payment form.
  # @attr seller_bot_user_id [Integer] User identifier of the seller bot.
  # @attr product_info [TD::Types::ProductInfo] Information about the product.
  class PaymentForm < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :type, TD::Types::PaymentFormType
    attribute :seller_bot_user_id, TD::Types::Coercible::Integer
    attribute :product_info, TD::Types::ProductInfo
  end
end
