module TD::Types
  # Describes earnings from sponsored messages in a chat in some time frame.
  #
  # @attr start_date [Integer] Point in time (Unix timestamp) when the earnings started.
  # @attr end_date [Integer] Point in time (Unix timestamp) when the earnings ended.
  class ChatRevenueTransactionType::Earnings < ChatRevenueTransactionType
    attribute :start_date, TD::Types::Coercible::Integer
    attribute :end_date, TD::Types::Coercible::Integer
  end
end
