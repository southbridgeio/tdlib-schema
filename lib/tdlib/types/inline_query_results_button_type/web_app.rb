module TD::Types
  # Describes the button that opens a Web App by calling getWebAppUrl.
  #
  # @attr url [TD::Types::String] An HTTP URL to pass to getWebAppUrl.
  class InlineQueryResultsButtonType::WebApp < InlineQueryResultsButtonType
    attribute :url, TD::Types::String
  end
end
