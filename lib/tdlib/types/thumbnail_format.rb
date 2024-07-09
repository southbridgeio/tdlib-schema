module TD::Types
  # Describes format of a thumbnail.
  class ThumbnailFormat < Base
    %w[
      jpeg
      gif
      mpeg4
      png
      tgs
      webm
      webp
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/thumbnail_format/#{type}"
    end
  end
end
