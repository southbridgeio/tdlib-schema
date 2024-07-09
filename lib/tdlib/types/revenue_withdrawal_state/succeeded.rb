module TD::Types
  # Withdrawal succeeded.
  #
  # @attr date [Integer] Point in time (Unix timestamp) when the withdrawal was completed.
  # @attr url [TD::Types::String] The URL where the withdrawal transaction can be viewed.
  class RevenueWithdrawalState::Succeeded < RevenueWithdrawalState
    attribute :date, TD::Types::Coercible::Integer
    attribute :url, TD::Types::String
  end
end
