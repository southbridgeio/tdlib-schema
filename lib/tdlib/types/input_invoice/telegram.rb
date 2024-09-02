module TD::Types
  # An invoice for a payment toward Telegram; must not be used in the in-store apps.
  #
  # @attr purpose [TD::Types::TelegramPaymentPurpose] Transaction purpose.
  class InputInvoice::Telegram < InputInvoice
    attribute :purpose, TD::Types::TelegramPaymentPurpose
  end
end
