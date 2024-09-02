module TD::Types
  # An area pointing to a location.
  #
  # @attr location [TD::Types::Location] The location.
  # @attr address [TD::Types::LocationAddress, nil] Address of the location; may be null if unknown.
  class StoryAreaType::Location < StoryAreaType
    attribute :location, TD::Types::Location
    attribute :address, TD::Types::LocationAddress.optional.default(nil)
  end
end
