module TD::Types
  # Contains full information about a basic group.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Chat photo; may be null.
  # @attr description [TD::Types::String] Group description.
  #   Updated only after the basic group is opened.
  # @attr creator_user_id [Integer] User identifier of the creator of the group; 0 if unknown.
  # @attr members [Array<TD::Types::ChatMember>] Group members.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] Primary invite link for this group; may be null.
  #   For chat administrators with can_invite_users right only.
  #   Updated only after the basic group is opened.
  # @attr bot_commands [Array<TD::Types::BotCommands>] List of commands of bots in the group.
  class BasicGroupFullInfo < Base
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :description, TD::Types::String
    attribute :creator_user_id, TD::Types::Coercible::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatMember)
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
    attribute :bot_commands, TD::Types::Array.of(TD::Types::BotCommands)
  end
end
