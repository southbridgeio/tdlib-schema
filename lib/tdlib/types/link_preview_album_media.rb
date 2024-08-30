module TD::Types
  # Describes a media from a link preview album.
  class LinkPreviewAlbumMedia < Base
    %w[
      photo
      video
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/link_preview_album_media/#{type}"
    end
  end
end
