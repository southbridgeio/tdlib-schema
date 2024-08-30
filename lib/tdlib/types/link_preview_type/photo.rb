module TD::Types
  # The link is a link to a photo.
  #
  # @attr photo [TD::Types::Photo] The photo.
  # @attr author [TD::Types::String] Author of the photo.
  class LinkPreviewType::Photo < LinkPreviewType
    attribute :photo, TD::Types::Photo
    attribute :author, TD::Types::String
  end
end
