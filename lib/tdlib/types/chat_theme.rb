module TD::Types
  # Describes a chat theme.
  #
  # @attr name [TD::Types::String] Theme name.
  # @attr light_settings [TD::Types::ThemeSettings] Theme settings for a light chat theme.
  # @attr dark_settings [TD::Types::ThemeSettings] Theme settings for a dark chat theme.
  class ChatTheme < Base
    attribute :name, TD::Types::String
    attribute :light_settings, TD::Types::ThemeSettings
    attribute :dark_settings, TD::Types::ThemeSettings
  end
end
