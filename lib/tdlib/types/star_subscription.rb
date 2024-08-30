module TD::Types
  # Contains information about subscription to a channel chat paid in Telegram Stars.
  #
  # @attr id [TD::Types::String] Unique identifier of the subscription.
  # @attr chat_id [Integer] Identifier of the channel chat that is subscribed.
  # @attr expiration_date [Integer] Point in time (Unix timestamp) when the subscription will expire or expired.
  # @attr can_reuse [Boolean] True, if the subscription is active and the user can use the method reuseStarSubscription
  #   to join the subscribed chat again.
  # @attr is_canceled [Boolean] True, if the subscription was canceled.
  # @attr is_expiring [Boolean] True, if the subscription expires soon and there are no enough Telegram Stars on the
  #   user's balance to extend it.
  # @attr invite_link [TD::Types::String, nil] The invite link that can be used to renew the subscription if it has
  #   been expired; may be empty, if the link isn't available anymore.
  # @attr pricing [TD::Types::StarSubscriptionPricing] The subscription plan.
  class StarSubscription < Base
    attribute :id, TD::Types::String
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :expiration_date, TD::Types::Coercible::Integer
    attribute :can_reuse, TD::Types::Bool
    attribute :is_canceled, TD::Types::Bool
    attribute :is_expiring, TD::Types::Bool
    attribute :invite_link, TD::Types::String.optional.default(nil)
    attribute :pricing, TD::Types::StarSubscriptionPricing
  end
end
