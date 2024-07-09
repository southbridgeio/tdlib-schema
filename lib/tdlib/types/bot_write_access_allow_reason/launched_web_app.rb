module TD::Types
  # The user launched a Web App using getWebAppLinkUrl.
  #
  # @attr web_app [TD::Types::WebApp] Information about the Web App.
  class BotWriteAccessAllowReason::LaunchedWebApp < BotWriteAccessAllowReason
    attribute :web_app, TD::Types::WebApp
  end
end
