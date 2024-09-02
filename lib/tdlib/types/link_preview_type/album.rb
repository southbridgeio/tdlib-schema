module TD::Types
  # The link is a link to a media album consisting of photos and videos.
  #
  # @attr media [Array<TD::Types::LinkPreviewAlbumMedia>] The list of album media.
  # @attr caption [TD::Types::String] Album caption.
  class LinkPreviewType::Album < LinkPreviewType
    attribute :media, TD::Types::Array.of(TD::Types::LinkPreviewAlbumMedia)
    attribute :caption, TD::Types::String
  end
end
