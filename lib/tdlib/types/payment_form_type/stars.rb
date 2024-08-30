module TD::Types
  # The payment form is for a payment in Telegram Stars.
  #
  # @attr star_count [Integer] Number of Telegram Stars that will be paid.
  class PaymentFormType::Stars < PaymentFormType
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
