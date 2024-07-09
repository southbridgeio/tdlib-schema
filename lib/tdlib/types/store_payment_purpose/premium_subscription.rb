module TD::Types
  # The user subscribing to Telegram Premium.
  #
  # @attr is_restore [Boolean] Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
  # @attr is_upgrade [Boolean] Pass true if this is an upgrade from a monthly subscription to early subscription; only
  #   for App Store.
  class StorePaymentPurpose::PremiumSubscription < StorePaymentPurpose
    attribute :is_restore, TD::Types::Bool
    attribute :is_upgrade, TD::Types::Bool
  end
end
