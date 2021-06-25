module TD::Types
  # Describes a location on planet Earth.
  #
  # @attr latitude [Float] Latitude of the location in degrees; as defined by the sender.
  # @attr longitude [Float] Longitude of the location, in degrees; as defined by the sender.
  # @attr horizontal_accuracy [Float] The estimated horizontal accuracy of the location, in meters; as defined by the
  #   sender.
  #   0 if unknown.
  class Location < Base
    attribute :latitude, TD::Types::Float
    attribute :longitude, TD::Types::Float
    attribute :horizontal_accuracy, TD::Types::Float
  end
end
