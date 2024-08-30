module TD::Types
  # Describes subscription plan paid in Telegram Stars.
  #
  # @attr period [Integer] The number of seconds between consecutive Telegram Star debiting.
  # @attr star_count [Integer] The amount of Telegram Stars that must be paid for each period.
  class StarSubscriptionPricing < Base
    attribute :period, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
