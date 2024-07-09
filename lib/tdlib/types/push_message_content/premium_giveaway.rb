module TD::Types
  # A message with a Telegram Premium giveaway.
  #
  # @attr winner_count [Integer] Number of users which will receive Telegram Premium subscription gift codes; 0 for
  #   pinned message.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation; 0 for pinned message.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::PremiumGiveaway < PushMessageContent
    attribute :winner_count, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :is_pinned, TD::Types::Bool
  end
end
