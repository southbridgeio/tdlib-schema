module TD::Types
  # An audio message.
  #
  # @attr audio [TD::Types::Audio] The audio description.
  # @attr caption [TD::Types::FormattedText] Audio caption.
  class MessageContent::Audio < MessageContent
    attribute :audio, TD::Types::Audio
    attribute :caption, TD::Types::FormattedText
  end
end
