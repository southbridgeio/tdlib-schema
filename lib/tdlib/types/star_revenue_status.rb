module TD::Types
  # Contains information about Telegram Stars earned by a bot or a chat.
  #
  # @attr total_count [Integer] Total number of Telegram Stars earned.
  # @attr current_count [Integer] The number of Telegram Stars that aren't withdrawn yet.
  # @attr available_count [Integer] The number of Telegram Stars that are available for withdrawal.
  # @attr withdrawal_enabled [Boolean] True, if Telegram Stars can be withdrawn now or later.
  # @attr next_withdrawal_in [Integer] Time left before the next withdrawal can be started, in seconds; 0 if withdrawal
  #   can be started now.
  class StarRevenueStatus < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :current_count, TD::Types::Coercible::Integer
    attribute :available_count, TD::Types::Coercible::Integer
    attribute :withdrawal_enabled, TD::Types::Bool
    attribute :next_withdrawal_in, TD::Types::Coercible::Integer
  end
end
