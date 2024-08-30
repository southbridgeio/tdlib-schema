module TD::Types
  # A message with an animated emoji.
  #
  # @attr animated_emoji [TD::Types::AnimatedEmoji] The animated emoji.
  # @attr emoji [TD::Types::String] The corresponding emoji.
  class MessageContent::AnimatedEmoji < MessageContent
    attribute :animated_emoji, TD::Types::AnimatedEmoji
    attribute :emoji, TD::Types::String
  end
end
