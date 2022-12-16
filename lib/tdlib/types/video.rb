module TD::Types
  # Describes a video file.
  #
  # @attr duration [Integer] Duration of the video, in seconds; as defined by the sender.
  # @attr width [Integer] Video width; as defined by the sender.
  # @attr height [Integer] Video height; as defined by the sender.
  # @attr file_name [TD::Types::String] Original name of the file; as defined by the sender.
  # @attr mime_type [TD::Types::String] MIME type of the file; as defined by the sender.
  # @attr has_stickers [Boolean] True, if stickers were added to the video.
  #   The list of corresponding sticker sets can be received using getAttachedStickerSets.
  # @attr supports_streaming [Boolean] True, if the video is supposed to be streamed.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Video minithumbnail; may be null.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may
  #   be null.
  # @attr video [TD::Types::File] File containing the video.
  class Video < Base
    attribute :duration, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :has_stickers, TD::Types::Bool
    attribute :supports_streaming, TD::Types::Bool
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :video, TD::Types::File
  end
end
