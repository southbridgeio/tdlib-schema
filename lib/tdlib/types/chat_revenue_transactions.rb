module TD::Types
  # Contains a list of chat revenue transactions.
  #
  # @attr total_count [Integer] Total number of transactions.
  # @attr transactions [Array<TD::Types::ChatRevenueTransaction>] List of transactions.
  class ChatRevenueTransactions < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :transactions, TD::Types::Array.of(TD::Types::ChatRevenueTransaction)
  end
end
