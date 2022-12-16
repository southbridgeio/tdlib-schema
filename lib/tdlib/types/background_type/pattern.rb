module TD::Types
  # A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the
  #   background fill chosen by the user.
  #
  # @attr fill [TD::Types::BackgroundFill] Fill of the background.
  # @attr intensity [Integer] Intensity of the pattern when it is shown above the filled background; 0-100..
  # @attr is_inverted [Boolean] True, if the background fill must be applied only to the pattern itself.
  #   All other pixels are black in this case.
  #   For dark themes only.
  # @attr is_moving [Boolean] True, if the background needs to be slightly moved when device is tilted.
  class BackgroundType::Pattern < BackgroundType
    attribute :fill, TD::Types::BackgroundFill
    attribute :intensity, TD::Types::Coercible::Integer
    attribute :is_inverted, TD::Types::Bool
    attribute :is_moving, TD::Types::Bool
  end
end
