module TD::Types
  # The link is a link to a Telegram bot, which is supposed to be added to a group chat.
  # Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the
  #   current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added
  #   to a public supergroup only by administrators of the supergroup.
  # If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat
  #   and if the bot already is an administrator, check that the current user can edit its administrator rights, combine
  #   received rights with the requested administrator rights, show confirmation box to the user, and call
  #   setChatMemberStatus with the chosen chat and confirmed administrator rights.
  # Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat.
  # Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat;
  #   otherwise, just send /start message with bot's username added to the chat.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr start_parameter [TD::Types::String] The parameter to be passed to sendBotStartMessage.
  # @attr administrator_rights [TD::Types::ChatAdministratorRights, nil] Expected administrator rights for the bot; may
  #   be null.
  class InternalLinkType::BotStartInGroup < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :start_parameter, TD::Types::String
    attribute :administrator_rights, TD::Types::ChatAdministratorRights.optional.default(nil)
  end
end
