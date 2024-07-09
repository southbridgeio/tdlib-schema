module TD::Types
  # Product invoice.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code.
  # @attr price_parts [Array<TD::Types::LabeledPricePart>] A list of objects used to calculate the total price of the
  #   product.
  # @attr max_tip_amount [Integer] The maximum allowed amount of tip in the smallest units of the currency.
  # @attr suggested_tip_amounts [Array<Integer>] Suggested amounts of tip in the smallest units of the currency.
  # @attr recurring_payment_terms_of_service_url [TD::Types::String] An HTTP URL with terms of service for recurring
  #   payments.
  #   If non-empty, the invoice payment will result in recurring payments and the user must accept the terms of service
  #   before allowed to pay.
  # @attr terms_of_service_url [TD::Types::String] An HTTP URL with terms of service for non-recurring payments.
  #   If non-empty, then the user must accept the terms of service before allowed to pay.
  # @attr is_test [Boolean] True, if the payment is a test payment.
  # @attr need_name [Boolean] True, if the user's name is needed for payment.
  # @attr need_phone_number [Boolean] True, if the user's phone number is needed for payment.
  # @attr need_email_address [Boolean] True, if the user's email address is needed for payment.
  # @attr need_shipping_address [Boolean] True, if the user's shipping address is needed for payment.
  # @attr send_phone_number_to_provider [Boolean] True, if the user's phone number will be sent to the provider.
  # @attr send_email_address_to_provider [Boolean] True, if the user's email address will be sent to the provider.
  # @attr is_flexible [Boolean] True, if the total price depends on the shipping method.
  class Invoice < Base
    attribute :currency, TD::Types::String
    attribute :price_parts, TD::Types::Array.of(TD::Types::LabeledPricePart)
    attribute :max_tip_amount, TD::Types::Coercible::Integer
    attribute :suggested_tip_amounts, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :recurring_payment_terms_of_service_url, TD::Types::String
    attribute :terms_of_service_url, TD::Types::String
    attribute :is_test, TD::Types::Bool
    attribute :need_name, TD::Types::Bool
    attribute :need_phone_number, TD::Types::Bool
    attribute :need_email_address, TD::Types::Bool
    attribute :need_shipping_address, TD::Types::Bool
    attribute :send_phone_number_to_provider, TD::Types::Bool
    attribute :send_email_address_to_provider, TD::Types::Bool
    attribute :is_flexible, TD::Types::Bool
  end
end
