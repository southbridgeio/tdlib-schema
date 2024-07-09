module TD::Types
  # Describes position of a clickable rectangle area on a story media.
  #
  # @attr x_percentage [Float] The abscissa of the rectangle's center, as a percentage of the media width.
  # @attr y_percentage [Float] The ordinate of the rectangle's center, as a percentage of the media height.
  # @attr width_percentage [Float] The width of the rectangle, as a percentage of the media width.
  # @attr height_percentage [Float] The height of the rectangle, as a percentage of the media height.
  # @attr rotation_angle [Float] Clockwise rotation angle of the rectangle, in degrees; 0-360.
  # @attr corner_radius_percentage [Float] The radius of the rectangle corner rounding, as a percentage of the media
  #   width.
  class StoryAreaPosition < Base
    attribute :x_percentage, TD::Types::Coercible::Float
    attribute :y_percentage, TD::Types::Coercible::Float
    attribute :width_percentage, TD::Types::Coercible::Float
    attribute :height_percentage, TD::Types::Coercible::Float
    attribute :rotation_angle, TD::Types::Coercible::Float
    attribute :corner_radius_percentage, TD::Types::Coercible::Float
  end
end
