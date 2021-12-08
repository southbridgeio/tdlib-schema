module TD::Types
  # Contains the result of a payment request.
  #
  # @attr success [Boolean] True, if the payment request was successful; otherwise the verification_url will be
  #   non-empty.
  # @attr verification_url [TD::Types::String] URL for additional payment credentials verification.
  class PaymentResult < Base
    attribute :success, TD::Types::Bool
    attribute :verification_url, TD::Types::String
  end
end
