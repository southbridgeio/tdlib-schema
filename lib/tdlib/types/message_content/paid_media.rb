module TD::Types
  # A message with paid media.
  #
  # @attr star_count [Integer] Number of stars needed to buy access to the media in the message.
  # @attr media [Array<TD::Types::PaidMedia>] Information about the media.
  # @attr caption [TD::Types::FormattedText] Media caption.
  # @attr show_caption_above_media [Boolean] True, if the caption must be shown above the media; otherwise, the caption
  #   must be shown below the media.
  class MessageContent::PaidMedia < MessageContent
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :media, TD::Types::Array.of(TD::Types::PaidMedia)
    attribute :caption, TD::Types::FormattedText
    attribute :show_caption_above_media, TD::Types::Bool
  end
end
