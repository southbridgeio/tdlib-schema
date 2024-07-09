module TD::Types
  # A message with a Telegram Premium gift code created for the user.
  #
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation.
  class PushMessageContent::PremiumGiftCode < PushMessageContent
    attribute :month_count, TD::Types::Coercible::Integer
  end
end
