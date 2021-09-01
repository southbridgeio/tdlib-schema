module TD::Types
  # A message with information about an ended voice chat.
  #
  # @attr duration [Integer] Call duration, in seconds.
  class MessageContent::VoiceChatEnded < MessageContent
    attribute :duration, TD::Types::Coercible::Integer
  end
end
