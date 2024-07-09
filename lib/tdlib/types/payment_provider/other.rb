module TD::Types
  # Some other payment provider, for which a web payment form must be shown.
  #
  # @attr url [TD::Types::String] Payment form URL.
  class PaymentProvider::Other < PaymentProvider
    attribute :url, TD::Types::String
  end
end
