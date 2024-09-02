module TD::Types
  # An area with information about weather.
  #
  # @attr temperature [Float] Temperature, in degree Celsius.
  # @attr emoji [TD::Types::String] Emoji representing the weather.
  # @attr background_color [Integer] A color of the area background in the ARGB format.
  class StoryAreaType::Weather < StoryAreaType
    attribute :temperature, TD::Types::Coercible::Float
    attribute :emoji, TD::Types::String
    attribute :background_color, TD::Types::Coercible::Integer
  end
end
