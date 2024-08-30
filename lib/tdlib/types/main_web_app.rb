module TD::Types
  # Contains information about the main Web App of a bot.
  #
  # @attr url [TD::Types::String] URL of the Web App to open.
  # @attr is_compact [Boolean] True, if the Web App must always be opened in the compact mode instead of the full-size
  #   mode.
  class MainWebApp < Base
    attribute :url, TD::Types::String
    attribute :is_compact, TD::Types::Bool
  end
end
