module TD::Types
  # The link is a link to a chat with a Telegram bot.
  # Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with
  #   the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr start_parameter [TD::Types::String] The parameter to be passed to sendBotStartMessage.
  # @attr autostart [Boolean] True, if sendBotStartMessage must be called automatically without showing the START
  #   button.
  class InternalLinkType::BotStart < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :start_parameter, TD::Types::String
    attribute :autostart, TD::Types::Bool
  end
end
