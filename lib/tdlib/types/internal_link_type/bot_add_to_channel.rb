module TD::Types
  # The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator.
  # Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select
  #   a channel chat to add the bot to as an administrator.
  # Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,
  #   check that the current user can edit its administrator rights and combine received rights with the requested
  #   administrator rights.
  # Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr administrator_rights [TD::Types::ChatAdministratorRights] Expected administrator rights for the bot.
  class InternalLinkType::BotAddToChannel < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :administrator_rights, TD::Types::ChatAdministratorRights
  end
end
