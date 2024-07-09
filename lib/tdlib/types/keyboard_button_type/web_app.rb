module TD::Types
  # A button that opens a Web App by calling getWebAppUrl.
  #
  # @attr url [TD::Types::String] An HTTP URL to pass to getWebAppUrl.
  class KeyboardButtonType::WebApp < KeyboardButtonType
    attribute :url, TD::Types::String
  end
end
