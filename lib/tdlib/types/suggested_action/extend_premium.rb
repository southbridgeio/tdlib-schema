module TD::Types
  # Suggests the user to extend their expiring Telegram Premium subscription.
  #
  # @attr manage_premium_subscription_url [TD::Types::String] A URL for managing Telegram Premium subscription.
  class SuggestedAction::ExtendPremium < SuggestedAction
    attribute :manage_premium_subscription_url, TD::Types::String
  end
end
