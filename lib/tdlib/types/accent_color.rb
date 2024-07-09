module TD::Types
  # Contains information about supported accent color for user/chat name, background of empty chat photo, replies to
  #   messages and link previews.
  #
  # @attr id [Integer] Accent color identifier.
  # @attr built_in_accent_color_id [Integer] Identifier of a built-in color to use in places, where only one color is
  #   needed; 0-6.
  # @attr light_theme_colors [Array<Integer>] The list of 1-3 colors in RGB format, describing the accent color, as
  #   expected to be shown in light themes.
  # @attr dark_theme_colors [Array<Integer>] The list of 1-3 colors in RGB format, describing the accent color, as
  #   expected to be shown in dark themes.
  # @attr min_channel_chat_boost_level [Integer] The minimum chat boost level required to use the color in a channel
  #   chat.
  class AccentColor < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :built_in_accent_color_id, TD::Types::Coercible::Integer
    attribute :light_theme_colors, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :dark_theme_colors, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :min_channel_chat_boost_level, TD::Types::Coercible::Integer
  end
end
