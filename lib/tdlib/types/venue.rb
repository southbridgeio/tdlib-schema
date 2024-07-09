module TD::Types
  # Describes a venue.
  #
  # @attr location [TD::Types::Location] Venue location; as defined by the sender.
  # @attr title [TD::Types::String] Venue name; as defined by the sender.
  # @attr address [TD::Types::String] Venue address; as defined by the sender.
  # @attr provider [TD::Types::String] Provider of the venue database; as defined by the sender.
  #   Currently, only "foursquare" and "gplaces" (Google Places) need to be supported.
  # @attr id [TD::Types::String] Identifier of the venue in the provider database; as defined by the sender.
  # @attr type [TD::Types::String] Type of the venue in the provider database; as defined by the sender.
  class Venue < Base
    attribute :location, TD::Types::Location
    attribute :title, TD::Types::String
    attribute :address, TD::Types::String
    attribute :provider, TD::Types::String
    attribute :id, TD::Types::String
    attribute :type, TD::Types::String
  end
end
