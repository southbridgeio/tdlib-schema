module TD::Types
  # An area pointing to a location.
  #
  # @attr location [TD::Types::Location] The location.
  # @attr address [TD::Types::LocationAddress] Address of the location; pass null if unknown.
  class InputStoryAreaType::Location < InputStoryAreaType
    attribute :location, TD::Types::Location
    attribute :address, TD::Types::LocationAddress
  end
end
