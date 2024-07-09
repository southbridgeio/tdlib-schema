module TD::Types
  # The list of supported accent colors for user profiles has changed.
  #
  # @attr colors [Array<TD::Types::ProfileAccentColor>] Information about supported colors.
  # @attr available_accent_color_ids [Array<Integer>] The list of accent color identifiers, which can be set through
  #   setProfileAccentColor and setChatProfileAccentColor.
  #   The colors must be shown in the specififed order.
  class Update::ProfileAccentColors < Update
    attribute :colors, TD::Types::Array.of(TD::Types::ProfileAccentColor)
    attribute :available_accent_color_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
