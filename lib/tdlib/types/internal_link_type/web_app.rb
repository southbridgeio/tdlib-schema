module TD::Types
  # The link is a link to a Web App.
  # Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the
  #   received bot and the given web_app_short_name.
  # Process received foundWebApp by showing a confirmation dialog if needed.
  # If the bot can be added to attachment or side menu, but isn't added yet, then show a disclaimer about Mini Apps
  #   being third-party applications instead of the dialog and ask the user to accept their Terms of service.
  # If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot.
  # Then, call getWebAppLinkUrl and open the returned URL as a Web App.
  #
  # @attr bot_username [TD::Types::String] Username of the bot that owns the Web App.
  # @attr web_app_short_name [TD::Types::String] Short name of the Web App.
  # @attr start_parameter [TD::Types::String] Start parameter to be passed to getWebAppLinkUrl.
  # @attr is_compact [Boolean] True, if the Web App must be opened in the compact mode instead of the full-size mode.
  class InternalLinkType::WebApp < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :web_app_short_name, TD::Types::String
    attribute :start_parameter, TD::Types::String
    attribute :is_compact, TD::Types::Bool
  end
end
