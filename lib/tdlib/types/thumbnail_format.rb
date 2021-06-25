module TD::Types
  # Describes format of the thumbnail.
  class ThumbnailFormat < Base
    %w[
      jpeg
      png
      webp
      gif
      tgs
      mpeg4
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/thumbnail_format/#{type}"
    end
  end
end
