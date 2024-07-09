module TD::Types
  # The link is a link to a bot, which can be installed to the side menu.
  # Call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment
  #   menu.
  # Then, use getAttachmentMenuBot to receive information about the bot.
  # If the bot isn't added to side menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user
  #   to accept their Terms of service and confirm adding the bot to side and attachment menu.
  # If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot.
  # If the bot is added to side menu, then use getWebAppUrl with the given URL and open the returned URL as a Web App.
  #
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr url [TD::Types::String] URL to be passed to getWebAppUrl.
  # @attr is_compact [Boolean] True, if the Web App must be opened in a compact mode instead of a full-size mode.
  class InternalLinkType::SideMenuBot < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :url, TD::Types::String
    attribute :is_compact, TD::Types::Bool
  end
end
