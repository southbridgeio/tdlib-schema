module TD::Types
  # Represents a list of Telegram star transactions.
  #
  # @attr star_count [Integer] The amount of owned Telegram stars.
  # @attr transactions [Array<TD::Types::StarTransaction>] List of transactions with Telegram stars.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class StarTransactions < Base
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :transactions, TD::Types::Array.of(TD::Types::StarTransaction)
    attribute :next_offset, TD::Types::String
  end
end
