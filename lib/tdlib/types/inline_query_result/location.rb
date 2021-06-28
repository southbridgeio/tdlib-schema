module TD::Types
  # Represents a point on the map.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr location [TD::Types::Location] Location result.
  # @attr title [TD::Types::String] Title of the result.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Result thumbnail in JPEG format; may be null.
  class InlineQueryResult::Location < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :location, TD::Types::Location
    attribute :title, TD::Types::String
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
  end
end
