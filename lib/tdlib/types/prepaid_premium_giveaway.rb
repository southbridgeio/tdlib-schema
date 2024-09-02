module TD::Types
  # Describes a prepaid Telegram Premium giveaway.
  #
  # @attr id [Integer] Unique identifier of the prepaid giveaway.
  # @attr winner_count [Integer] Number of users which will receive Telegram Premium subscription gift codes.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation.
  # @attr payment_date [Integer] Point in time (Unix timestamp) when the giveaway was paid.
  class PrepaidPremiumGiveaway < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :payment_date, TD::Types::Coercible::Integer
  end
end
