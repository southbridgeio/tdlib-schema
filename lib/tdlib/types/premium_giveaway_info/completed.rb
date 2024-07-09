module TD::Types
  # Describes a completed giveaway.
  #
  # @attr creation_date [Integer] Point in time (Unix timestamp) when the giveaway was created.
  # @attr actual_winners_selection_date [Integer] Point in time (Unix timestamp) when the winners were selected.
  #   May be bigger than winners selection date specified in parameters of the giveaway.
  # @attr was_refunded [Boolean] True, if the giveaway was canceled and was fully refunded.
  # @attr winner_count [Integer] Number of winners in the giveaway.
  # @attr activation_count [Integer] Number of winners, which activated their gift codes.
  # @attr gift_code [TD::Types::String] Telegram Premium gift code that was received by the current user; empty if the
  #   user isn't a winner in the giveaway.
  class PremiumGiveawayInfo::Completed < PremiumGiveawayInfo
    attribute :creation_date, TD::Types::Coercible::Integer
    attribute :actual_winners_selection_date, TD::Types::Coercible::Integer
    attribute :was_refunded, TD::Types::Bool
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :activation_count, TD::Types::Coercible::Integer
    attribute :gift_code, TD::Types::String
  end
end
