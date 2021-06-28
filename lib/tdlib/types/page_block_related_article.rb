module TD::Types
  # Contains information about a related article.
  #
  # @attr url [TD::Types::String] Related article URL.
  # @attr title [TD::Types::String, nil] Article title; may be empty.
  # @attr description [TD::Types::String, nil] Article description; may be empty.
  # @attr photo [TD::Types::Photo, nil] Article photo; may be null.
  # @attr author [TD::Types::String, nil] Article author; may be empty.
  # @attr publish_date [Integer] Point in time (Unix timestamp) when the article was published; 0 if unknown.
  class PageBlockRelatedArticle < Base
    attribute :url, TD::Types::String
    attribute :title, TD::Types::String.optional.default(nil)
    attribute :description, TD::Types::String.optional.default(nil)
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :author, TD::Types::String.optional.default(nil)
    attribute :publish_date, TD::Types::Coercible::Integer
  end
end
