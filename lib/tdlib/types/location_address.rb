module TD::Types
  # Describes an address of a location.
  #
  # @attr country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code.
  # @attr state [TD::Types::String] State, if applicable; empty if unknown.
  # @attr city [TD::Types::String] City; empty if unknown.
  # @attr street [TD::Types::String] The address; empty if unknown.
  class LocationAddress < Base
    attribute :country_code, TD::Types::String
    attribute :state, TD::Types::String
    attribute :city, TD::Types::String
    attribute :street, TD::Types::String
  end
end
