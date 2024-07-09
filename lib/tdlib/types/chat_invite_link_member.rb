module TD::Types
  # Describes a chat member joined a chat via an invite link.
  #
  # @attr user_id [Integer] User identifier.
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined the chat.
  # @attr via_chat_folder_invite_link [Boolean] True, if the user has joined the chat using an invite link for a chat
  #   folder.
  # @attr approver_user_id [Integer] User identifier of the chat administrator, approved user join request.
  class ChatInviteLinkMember < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :joined_chat_date, TD::Types::Coercible::Integer
    attribute :via_chat_folder_invite_link, TD::Types::Bool
    attribute :approver_user_id, TD::Types::Coercible::Integer
  end
end
