module TD::Types
  # The default background has changed.
  #
  # @attr for_dark_theme [Boolean] True, if default background for dark theme has changed.
  # @attr background [TD::Types::Background, nil] The new default background; may be null.
  class Update::DefaultBackground < Update
    attribute :for_dark_theme, TD::Types::Bool
    attribute :background, TD::Types::Background.optional.default(nil)
  end
end
