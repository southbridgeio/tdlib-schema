module TD::Types
  # Describes a video file sent in a story.
  #
  # @attr duration [Float] Duration of the video, in seconds.
  # @attr width [Integer] Video width.
  # @attr height [Integer] Video height.
  # @attr has_stickers [Boolean] True, if stickers were added to the video.
  #   The list of corresponding sticker sets can be received using getAttachedStickerSets.
  # @attr is_animation [Boolean] True, if the video has no sound.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Video minithumbnail; may be null.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Video thumbnail in JPEG or MPEG4 format; may be null.
  # @attr preload_prefix_size [Integer] Size of file prefix, which is supposed to be preloaded, in bytes.
  # @attr video [TD::Types::File] File containing the video.
  class StoryVideo < Base
    attribute :duration, TD::Types::Coercible::Float
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :has_stickers, TD::Types::Bool
    attribute :is_animation, TD::Types::Bool
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :preload_prefix_size, TD::Types::Coercible::Integer
    attribute :video, TD::Types::File
  end
end
