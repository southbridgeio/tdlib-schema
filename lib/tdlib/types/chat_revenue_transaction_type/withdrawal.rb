module TD::Types
  # Describes a withdrawal of earnings.
  #
  # @attr withdrawal_date [Integer] Point in time (Unix timestamp) when the earnings withdrawal started.
  # @attr provider [TD::Types::String] Name of the payment provider.
  # @attr state [TD::Types::RevenueWithdrawalState] State of the withdrawal.
  class ChatRevenueTransactionType::Withdrawal < ChatRevenueTransactionType
    attribute :withdrawal_date, TD::Types::Coercible::Integer
    attribute :provider, TD::Types::String
    attribute :state, TD::Types::RevenueWithdrawalState
  end
end
