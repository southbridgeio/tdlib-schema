module TD::Types
  # The link is a link to the main Web App of a bot.
  # Call searchPublicChat with the given bot username, check that the user is a bot and has the main Web App.
  # If the bot can be added to attachment menu, then use getAttachmentMenuBot to receive information about the bot,
  #   then if the bot isn't added to side menu, show a disclaimer about Mini Apps being third-party applications, ask the
  #   user to accept their Terms of service and confirm adding the bot to side and attachment menu, then if the user accepts
  #   the terms and confirms adding, use toggleBotIsAddedToAttachmentMenu to add the bot.
  # Then, use getMainWebApp with the given start parameter and open the returned URL as a Web App.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr start_parameter [TD::Types::String] Start parameter to be passed to getMainWebApp.
  # @attr is_compact [Boolean] True, if the Web App must be opened in the compact mode instead of the full-size mode.
  class InternalLinkType::MainWebApp < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :start_parameter, TD::Types::String
    attribute :is_compact, TD::Types::Bool
  end
end
