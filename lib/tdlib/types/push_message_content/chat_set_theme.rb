module TD::Types
  # A chat theme was edited.
  #
  # @attr theme_name [TD::Types::String] If non-empty, name of a new theme, set for the chat.
  #   Otherwise, the chat theme was reset to the default one.
  class PushMessageContent::ChatSetTheme < PushMessageContent
    attribute :theme_name, TD::Types::String
  end
end
