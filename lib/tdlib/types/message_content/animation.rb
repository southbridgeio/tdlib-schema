module TD::Types
  # An animation message (GIF-style)..
  #
  # @attr animation [TD::Types::Animation] The animation description.
  # @attr caption [TD::Types::FormattedText] Animation caption.
  # @attr show_caption_above_media [Boolean] True, if the caption must be shown above the animation; otherwise, the
  #   caption must be shown below the animation.
  # @attr has_spoiler [Boolean] True, if the animation preview must be covered by a spoiler animation.
  # @attr is_secret [Boolean] True, if the animation thumbnail must be blurred and the animation must be shown only
  #   while tapped.
  class MessageContent::Animation < MessageContent
    attribute :animation, TD::Types::Animation
    attribute :caption, TD::Types::FormattedText
    attribute :show_caption_above_media, TD::Types::Bool
    attribute :has_spoiler, TD::Types::Bool
    attribute :is_secret, TD::Types::Bool
  end
end
