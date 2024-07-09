module TD::Types
  # A video message.
  #
  # @attr video [TD::Types::Video] The video description.
  # @attr caption [TD::Types::FormattedText] Video caption.
  # @attr show_caption_above_media [Boolean] True, if the caption must be shown above the video; otherwise, the caption
  #   must be shown below the video.
  # @attr has_spoiler [Boolean] True, if the video preview must be covered by a spoiler animation.
  # @attr is_secret [Boolean] True, if the video thumbnail must be blurred and the video must be shown only while
  #   tapped.
  class MessageContent::Video < MessageContent
    attribute :video, TD::Types::Video
    attribute :caption, TD::Types::FormattedText
    attribute :show_caption_above_media, TD::Types::Bool
    attribute :has_spoiler, TD::Types::Bool
    attribute :is_secret, TD::Types::Bool
  end
end
