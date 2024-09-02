module TD::Types
  # The link is a link to a video.
  #
  # @attr url [TD::Types::String, nil] URL of the video; may be empty if none.
  # @attr mime_type [TD::Types::String] MIME type of the video file.
  # @attr video [TD::Types::Video, nil] The video description; may be null if unknown.
  # @attr width [Integer] Expected width of the preview.
  # @attr height [Integer] Expected height of the preview.
  # @attr duration [Integer] Duration of the video, in seconds; 0 if unknown.
  # @attr author [TD::Types::String] Author of the video.
  class LinkPreviewType::Video < LinkPreviewType
    attribute :url, TD::Types::String.optional.default(nil)
    attribute :mime_type, TD::Types::String
    attribute :video, TD::Types::Video.optional.default(nil)
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :duration, TD::Types::Coercible::Integer
    attribute :author, TD::Types::String
  end
end
