module TD::Types
  # Contains full information about a basic group.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Chat photo; may be null if empty or unknown.
  #   If non-null, then it is the same photo as in chat.photo.
  # @attr description [TD::Types::String] Group description.
  #   Updated only after the basic group is opened.
  # @attr creator_user_id [Integer] User identifier of the creator of the group; 0 if unknown.
  # @attr members [Array<TD::Types::ChatMember>] Group members.
  # @attr can_hide_members [Boolean] True, if non-administrators and non-bots can be hidden in responses to
  #   getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup.
  # @attr can_toggle_aggressive_anti_spam [Boolean] True, if aggressive anti-spam checks can be enabled or disabled in
  #   the supergroup after upgrading the basic group to a supergroup.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] Primary invite link for this group; may be null.
  #   For chat administrators with can_invite_users right only.
  #   Updated only after the basic group is opened.
  # @attr bot_commands [Array<TD::Types::BotCommands>] List of commands of bots in the group.
  class BasicGroupFullInfo < Base
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :description, TD::Types::String
    attribute :creator_user_id, TD::Types::Coercible::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatMember)
    attribute :can_hide_members, TD::Types::Bool
    attribute :can_toggle_aggressive_anti_spam, TD::Types::Bool
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
    attribute :bot_commands, TD::Types::Array.of(TD::Types::BotCommands)
  end
end
