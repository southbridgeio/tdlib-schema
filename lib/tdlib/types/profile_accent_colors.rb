module TD::Types
  # Contains information about supported accent colors for user profile photo background in RGB format.
  #
  # @attr palette_colors [Array<Integer>] The list of 1-2 colors in RGB format, describing the colors, as expected to
  #   be shown in the color palette settings.
  # @attr background_colors [Array<Integer>] The list of 1-2 colors in RGB format, describing the colors, as expected
  #   to be used for the profile photo background.
  # @attr story_colors [Array<Integer>] The list of 2 colors in RGB format, describing the colors of the gradient to be
  #   used for the unread active story indicator around profile photo.
  class ProfileAccentColors < Base
    attribute :palette_colors, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :background_colors, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :story_colors, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
