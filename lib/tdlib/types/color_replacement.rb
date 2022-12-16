module TD::Types
  # Describes a color replacement for animated emoji.
  #
  # @attr old_color [Integer] Original animated emoji color in the RGB24 format.
  # @attr new_color [Integer] Replacement animated emoji color in the RGB24 format.
  class ColorReplacement < Base
    attribute :old_color, TD::Types::Coercible::Integer
    attribute :new_color, TD::Types::Coercible::Integer
  end
end
