module TD::Types
  # Describes a button to be shown instead of bot commands menu button.
  #
  # @attr text [TD::Types::String] Text of the button.
  # @attr url [TD::Types::String] URL of a Web App to open when the button is pressed.
  #   If the link is of the type internalLinkTypeWebApp, then it must be processed accordingly.
  #   Otherwise, the link must be passed to openWebApp.
  class BotMenuButton < Base
    attribute :text, TD::Types::String
    attribute :url, TD::Types::String
  end
end
