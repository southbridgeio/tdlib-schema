module TD::Types
  # User rights changed in a chat; for bots only.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr actor_user_id [Integer] Identifier of the user, changing the rights.
  # @attr date [Integer] Point in time (Unix timestamp) when the user rights were changed.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] If user has joined the chat using an invite link, the invite
  #   link; may be null.
  # @attr via_join_request [Boolean] True, if the user has joined the chat after sending a join request and being
  #   approved by an administrator.
  # @attr via_chat_folder_invite_link [Boolean] True, if the user has joined the chat using an invite link for a chat
  #   folder.
  # @attr old_chat_member [TD::Types::ChatMember] Previous chat member.
  # @attr new_chat_member [TD::Types::ChatMember] New chat member.
  class Update::ChatMember < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :actor_user_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
    attribute :via_join_request, TD::Types::Bool
    attribute :via_chat_folder_invite_link, TD::Types::Bool
    attribute :old_chat_member, TD::Types::ChatMember
    attribute :new_chat_member, TD::Types::ChatMember
  end
end
