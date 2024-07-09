module TD::Types
  # Smart Glocal payment provider.
  #
  # @attr public_token [TD::Types::String] Public payment token.
  # @attr tokenize_url [TD::Types::String] URL for sending card tokenization requests.
  class PaymentProvider::SmartGlocal < PaymentProvider
    attribute :public_token, TD::Types::String
    attribute :tokenize_url, TD::Types::String
  end
end
