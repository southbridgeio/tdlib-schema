module TD::Types
  # Describes a user or a chat as a member of another chat.
  #
  # @attr member_id [TD::Types::MessageSender] Identifier of the chat member.
  #   Currently, other chats can be only Left or Banned.
  #   Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups
  #   or channels.
  # @attr inviter_user_id [Integer] Identifier of a user that invited/promoted/banned this member in the chat; 0 if
  #   unknown.
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined the chat.
  # @attr status [TD::Types::ChatMemberStatus] Status of the member in the chat.
  class ChatMember < Base
    attribute :member_id, TD::Types::MessageSender
    attribute :inviter_user_id, TD::Types::Coercible::Integer
    attribute :joined_chat_date, TD::Types::Coercible::Integer
    attribute :status, TD::Types::ChatMemberStatus
  end
end
