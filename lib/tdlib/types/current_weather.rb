module TD::Types
  # Describes the current weather.
  #
  # @attr temperature [Float] Temperature, in degree Celsius.
  # @attr emoji [TD::Types::String] Emoji representing the weather.
  class CurrentWeather < Base
    attribute :temperature, TD::Types::Coercible::Float
    attribute :emoji, TD::Types::String
  end
end
