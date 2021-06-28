module TD::Types
  # Represents a link to an article or web page.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr url [TD::Types::String] URL of the result, if it exists.
  # @attr hide_url [Boolean] True, if the URL must be not shown.
  # @attr title [TD::Types::String] Title of the result.
  # @attr description [TD::Types::String] A short description of the result.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Result thumbnail in JPEG format; may be null.
  class InlineQueryResult::Article < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :url, TD::Types::String
    attribute :hide_url, TD::Types::Bool
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
  end
end
