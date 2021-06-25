module TD::Types
  # User rights changed in a chat; for bots only.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr actor_user_id [Integer] Identifier of the user, changing the rights.
  # @attr date [Integer] Point in time (Unix timestamp) when the user rights was changed.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] If user has joined the chat using an invite link, the invite
  #   link; may be null.
  # @attr old_chat_member [TD::Types::ChatMember] Previous chat member.
  # @attr new_chat_member [TD::Types::ChatMember] New chat member.
  class Update::ChatMember < Update
    attribute :chat_id, TD::Types::Integer
    attribute :actor_user_id, TD::Types::Integer
    attribute :date, TD::Types::Integer
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
    attribute :old_chat_member, TD::Types::ChatMember
    attribute :new_chat_member, TD::Types::ChatMember
  end
end
