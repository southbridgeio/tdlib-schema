module TD::Types
  # Describes a background set for a specific chat.
  #
  # @attr background [TD::Types::Background] The background.
  # @attr dark_theme_dimming [Integer] Dimming of the background in dark themes, as a percentage; 0-100.
  #   Applied only to Wallpaper and Fill types of background.
  class ChatBackground < Base
    attribute :background, TD::Types::Background
    attribute :dark_theme_dimming, TD::Types::Coercible::Integer
  end
end
