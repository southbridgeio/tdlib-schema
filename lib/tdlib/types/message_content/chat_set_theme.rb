module TD::Types
  # A theme in the chat has been changed.
  #
  # @attr theme_name [TD::Types::String] If non-empty, name of a new theme, set for the chat.
  #   Otherwise, chat theme was reset to the default one.
  class MessageContent::ChatSetTheme < MessageContent
    attribute :theme_name, TD::Types::String
  end
end
