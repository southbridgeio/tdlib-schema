module TD::Types
  # The transaction is a transaction with Fragment.
  #
  # @attr withdrawal_state [TD::Types::RevenueWithdrawalState, nil] State of the withdrawal; may be null for refunds
  #   from Fragment.
  class StarTransactionPartner::Fragment < StarTransactionPartner
    attribute :withdrawal_state, TD::Types::RevenueWithdrawalState.optional.default(nil)
  end
end
