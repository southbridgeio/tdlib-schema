module TD::Types
  # Represents a location of a business.
  #
  # @attr location [TD::Types::Location, nil] The location; may be null if not specified.
  # @attr address [TD::Types::String] Location address; 1-96 characters.
  class BusinessLocation < Base
    attribute :location, TD::Types::Location.optional.default(nil)
    attribute :address, TD::Types::String
  end
end
