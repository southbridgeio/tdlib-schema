module TD::Types
  # Represents a transaction changing the amount of owned Telegram Stars.
  #
  # @attr id [TD::Types::String] Unique identifier of the transaction.
  # @attr star_count [Integer] The amount of added owned Telegram Stars; negative for outgoing transactions.
  # @attr is_refund [Boolean] True, if the transaction is a refund of a previous transaction.
  # @attr date [Integer] Point in time (Unix timestamp) when the transaction was completed.
  # @attr partner [TD::Types::StarTransactionPartner] Source of the incoming transaction, or its recipient for outgoing
  #   transactions.
  class StarTransaction < Base
    attribute :id, TD::Types::String
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :is_refund, TD::Types::Bool
    attribute :date, TD::Types::Coercible::Integer
    attribute :partner, TD::Types::StarTransactionPartner
  end
end
