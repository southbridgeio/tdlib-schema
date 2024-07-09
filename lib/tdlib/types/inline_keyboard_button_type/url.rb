module TD::Types
  # A button that opens a specified URL.
  #
  # @attr url [TD::Types::String] HTTP or tg:// URL to open.
  #   If the link is of the type internalLinkTypeWebApp, then the button must be marked as a Web App button.
  class InlineKeyboardButtonType::Url < InlineKeyboardButtonType
    attribute :url, TD::Types::String
  end
end
