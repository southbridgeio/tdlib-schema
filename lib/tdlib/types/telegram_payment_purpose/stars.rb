module TD::Types
  # The user buying Telegram stars.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  # @attr star_count [Integer] Number of bought stars.
  class TelegramPaymentPurpose::Stars < TelegramPaymentPurpose
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
