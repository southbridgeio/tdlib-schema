module TD::Types
  # The link is a link to a Telegram bot, which is supposed to be added to a group chat.
  # Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the
  #   current user to select a group to add the bot to, and then call sendBotStartMessage with the given start parameter and
  #   the chosen group chat.
  # Bots can be added to a public group only by administrators of the group.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr start_parameter [TD::Types::String] The parameter to be passed to sendBotStartMessage.
  class InternalLinkType::BotStartInGroup < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :start_parameter, TD::Types::String
  end
end
