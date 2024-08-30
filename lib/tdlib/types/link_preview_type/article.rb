module TD::Types
  # The link is a link to a web site.
  #
  # @attr photo [TD::Types::Photo, nil] Article's main photo; may be null.
  # @attr author [TD::Types::String] Author of the article.
  class LinkPreviewType::Article < LinkPreviewType
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :author, TD::Types::String
  end
end
