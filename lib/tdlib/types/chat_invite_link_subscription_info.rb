module TD::Types
  # Contains information about subscription plan that must be paid by the user to use a chat invite link.
  #
  # @attr pricing [TD::Types::StarSubscriptionPricing] Information about subscription plan that must be paid by the
  #   user to use the link.
  # @attr can_reuse [Boolean] True, if the user has already paid for the subscription and can use joinChatByInviteLink
  #   to join the subscribed chat again.
  # @attr form_id [Integer] Identifier of the payment form to use for subscription payment; 0 if the subscription can't
  #   be paid.
  class ChatInviteLinkSubscriptionInfo < Base
    attribute :pricing, TD::Types::StarSubscriptionPricing
    attribute :can_reuse, TD::Types::Bool
    attribute :form_id, TD::Types::Coercible::Integer
  end
end
