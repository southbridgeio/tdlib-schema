module TD::Types
  # The list of supported accent colors has changed.
  #
  # @attr colors [Array<TD::Types::AccentColor>] Information about supported colors; colors with identifiers 0 (red), 1
  #   (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported and aren't included in
  #   the list.
  #   The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme.
  # @attr available_accent_color_ids [Array<Integer>] The list of accent color identifiers, which can be set through
  #   setAccentColor and setChatAccentColor.
  #   The colors must be shown in the specififed order.
  class Update::AccentColors < Update
    attribute :colors, TD::Types::Array.of(TD::Types::AccentColor)
    attribute :available_accent_color_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
