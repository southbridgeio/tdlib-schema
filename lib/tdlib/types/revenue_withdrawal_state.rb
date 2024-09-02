module TD::Types
  # Describes state of a revenue withdrawal.
  class RevenueWithdrawalState < Base
    %w[
      pending
      succeeded
      failed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/revenue_withdrawal_state/#{type}"
    end
  end
end
