module TD::Types
  # The list of available chat themes has changed.
  #
  # @attr chat_themes [Array<TD::Types::ChatTheme>] The new list of chat themes.
  class Update::ChatThemes < Update
    attribute :chat_themes, TD::Types::Array.of(TD::Types::ChatTheme)
  end
end
