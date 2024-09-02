module TD::Types
  # The transaction is a transaction with a business account.
  #
  # @attr user_id [Integer] Identifier of the business account user.
  # @attr media [Array<TD::Types::PaidMedia>] The bought media if the trancastion wasn't refunded.
  class StarTransactionPartner::Business < StarTransactionPartner
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :media, TD::Types::Array.of(TD::Types::PaidMedia)
  end
end
