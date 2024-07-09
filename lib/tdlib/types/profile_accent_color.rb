module TD::Types
  # Contains information about supported accent color for user profile photo background.
  #
  # @attr id [Integer] Profile accent color identifier.
  # @attr light_theme_colors [TD::Types::ProfileAccentColors] Accent colors expected to be used in light themes.
  # @attr dark_theme_colors [TD::Types::ProfileAccentColors] Accent colors expected to be used in dark themes.
  # @attr min_supergroup_chat_boost_level [Integer] The minimum chat boost level required to use the color in a
  #   supergroup chat.
  # @attr min_channel_chat_boost_level [Integer] The minimum chat boost level required to use the color in a channel
  #   chat.
  class ProfileAccentColor < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :light_theme_colors, TD::Types::ProfileAccentColors
    attribute :dark_theme_colors, TD::Types::ProfileAccentColors
    attribute :min_supergroup_chat_boost_level, TD::Types::Coercible::Integer
    attribute :min_channel_chat_boost_level, TD::Types::Coercible::Integer
  end
end
