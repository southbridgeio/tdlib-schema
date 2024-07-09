module TD::Types
  # The user creating Telegram Premium gift codes for other users.
  #
  # @attr boosted_chat_id [Integer] Identifier of the supergroup or channel chat, which will be automatically boosted
  #   by the users for duration of the Premium subscription and which is administered by the user; 0 if none.
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  # @attr user_ids [Array<Integer>] Identifiers of the users which can activate the gift codes.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active for the users.
  class TelegramPaymentPurpose::PremiumGiftCodes < TelegramPaymentPurpose
    attribute :boosted_chat_id, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :month_count, TD::Types::Coercible::Integer
  end
end
