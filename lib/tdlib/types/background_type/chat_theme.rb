module TD::Types
  # A background from a chat theme; can be used only as a chat background in channels.
  #
  # @attr theme_name [TD::Types::String] Name of the chat theme.
  class BackgroundType::ChatTheme < BackgroundType
    attribute :theme_name, TD::Types::String
  end
end
