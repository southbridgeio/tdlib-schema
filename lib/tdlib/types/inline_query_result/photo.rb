module TD::Types
  # Represents a photo.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr photo [TD::Types::Photo] Photo.
  # @attr title [TD::Types::String] Title of the result, if known.
  # @attr description [TD::Types::String] A short description of the result, if known.
  class InlineQueryResult::Photo < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :photo, TD::Types::Photo
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
  end
end
