module TD::Types
  # Contains information about a user that has failed to be added to a chat.
  #
  # @attr user_id [Integer] User identifier.
  # @attr premium_would_allow_invite [Boolean] True, if subscription to Telegram Premium would have allowed to add the
  #   user to the chat.
  # @attr premium_required_to_send_messages [Boolean] True, if subscription to Telegram Premium is required to send the
  #   user chat invite link.
  class FailedToAddMember < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :premium_would_allow_invite, TD::Types::Bool
    attribute :premium_required_to_send_messages, TD::Types::Bool
  end
end
