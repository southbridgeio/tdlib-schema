module TD::Types
  # Describes a chat member joined a chat by an invite link.
  #
  # @attr user_id [Integer] User identifier.
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined the chat.
  # @attr approver_user_id [Integer] User identifier of the chat administrator, approved user join request.
  class ChatInviteLinkMember < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :joined_chat_date, TD::Types::Coercible::Integer
    attribute :approver_user_id, TD::Types::Coercible::Integer
  end
end
