module TD::Types
  # A video message.
  #
  # @attr video [TD::Types::Video] The video description.
  # @attr caption [TD::Types::FormattedText] Video caption.
  # @attr is_secret [Boolean] True, if the video thumbnail must be blurred and the video must be shown only while
  #   tapped.
  class MessageContent::Video < MessageContent
    attribute :video, TD::Types::Video
    attribute :caption, TD::Types::FormattedText
    attribute :is_secret, TD::Types::Bool
  end
end
