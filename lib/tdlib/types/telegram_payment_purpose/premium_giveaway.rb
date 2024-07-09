module TD::Types
  # The user creating a Telegram Premium giveaway.
  #
  # @attr parameters [TD::Types::PremiumGiveawayParameters] Giveaway parameters.
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  # @attr winner_count [Integer] Number of users which will be able to activate the gift codes.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active for the users.
  class TelegramPaymentPurpose::PremiumGiveaway < TelegramPaymentPurpose
    attribute :parameters, TD::Types::PremiumGiveawayParameters
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
  end
end
