module TD::Types
  # Describes an address.
  #
  # @attr country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code.
  # @attr state [TD::Types::String] State, if applicable.
  # @attr city [TD::Types::String] City.
  # @attr street_line1 [TD::Types::String] First line of the address.
  # @attr street_line2 [TD::Types::String] Second line of the address.
  # @attr postal_code [TD::Types::String] Address postal code.
  class Address < Base
    attribute :country_code, TD::Types::String
    attribute :state, TD::Types::String
    attribute :city, TD::Types::String
    attribute :street_line1, TD::Types::String
    attribute :street_line2, TD::Types::String
    attribute :postal_code, TD::Types::String
  end
end
