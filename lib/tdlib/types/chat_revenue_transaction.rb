module TD::Types
  # Contains a chat revenue transactions.
  #
  # @attr cryptocurrency [TD::Types::String] Cryptocurrency in which revenue is calculated.
  # @attr cryptocurrency_amount [Integer] The withdrawn amount, in the smallest units of the cryptocurrency.
  # @attr type [TD::Types::ChatRevenueTransactionType] Type of the transaction.
  class ChatRevenueTransaction < Base
    attribute :cryptocurrency, TD::Types::String
    attribute :cryptocurrency_amount, TD::Types::Coercible::Integer
    attribute :type, TD::Types::ChatRevenueTransactionType
  end
end
