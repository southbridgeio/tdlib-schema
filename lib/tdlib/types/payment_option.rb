module TD::Types
  # Describes an additional payment option.
  #
  # @attr title [TD::Types::String] Title for the payment option.
  # @attr url [TD::Types::String] Payment form URL to be opened in a web view.
  class PaymentOption < Base
    attribute :title, TD::Types::String
    attribute :url, TD::Types::String
  end
end
