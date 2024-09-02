module TD::Types
  # Describes a refund for failed withdrawal of earnings.
  #
  # @attr refund_date [Integer] Point in time (Unix timestamp) when the transaction was refunded.
  # @attr provider [TD::Types::String] Name of the payment provider.
  class ChatRevenueTransactionType::Refund < ChatRevenueTransactionType
    attribute :refund_date, TD::Types::Coercible::Integer
    attribute :provider, TD::Types::String
  end
end
