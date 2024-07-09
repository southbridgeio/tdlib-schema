module TD::Types
  # A Telegram Premium giveaway.
  #
  # @attr parameters [TD::Types::PremiumGiveawayParameters] Giveaway parameters.
  # @attr winner_count [Integer] Number of users which will receive Telegram Premium subscription gift codes.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the message; may be null if unknown.
  class MessageContent::PremiumGiveaway < MessageContent
    attribute :parameters, TD::Types::PremiumGiveawayParameters
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
