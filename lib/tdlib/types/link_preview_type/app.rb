module TD::Types
  # The link is a link to an app at App Store or Google Play.
  #
  # @attr photo [TD::Types::Photo] Photo for the app.
  # @attr author [TD::Types::String] Author of the app.
  class LinkPreviewType::App < LinkPreviewType
    attribute :photo, TD::Types::Photo
    attribute :author, TD::Types::String
  end
end
