module TD::Types
  # Describes an option for buying or upgrading Telegram Premium for self.
  #
  # @attr payment_option [TD::Types::PremiumPaymentOption] Information about the payment option.
  # @attr is_current [Boolean] True, if this is the currently used Telegram Premium subscription option.
  # @attr is_upgrade [Boolean] True, if the payment option can be used to upgrade the existing Telegram Premium
  #   subscription.
  # @attr last_transaction_id [TD::Types::String] Identifier of the last in-store transaction for the currently used
  #   option.
  class PremiumStatePaymentOption < Base
    attribute :payment_option, TD::Types::PremiumPaymentOption
    attribute :is_current, TD::Types::Bool
    attribute :is_upgrade, TD::Types::Bool
    attribute :last_transaction_id, TD::Types::String
  end
end
