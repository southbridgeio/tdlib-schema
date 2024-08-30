module TD::Types
  # The link is a link to a Web App.
  #
  # @attr photo [TD::Types::Photo] Web App photo.
  class LinkPreviewType::WebApp < LinkPreviewType
    attribute :photo, TD::Types::Photo
  end
end
