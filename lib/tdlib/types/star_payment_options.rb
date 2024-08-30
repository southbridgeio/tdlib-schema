module TD::Types
  # Contains a list of options for buying Telegram Stars.
  #
  # @attr options [Array<TD::Types::StarPaymentOption>] The list of options.
  class StarPaymentOptions < Base
    attribute :options, TD::Types::Array.of(TD::Types::StarPaymentOption)
  end
end
