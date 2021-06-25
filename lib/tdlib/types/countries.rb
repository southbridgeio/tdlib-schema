module TD::Types
  # Contains information about countries.
  #
  # @attr countries [Array<TD::Types::CountryInfo>] The list of countries.
  class Countries < Base
    attribute :countries, TD::Types::Array.of(TD::Types::CountryInfo)
  end
end
