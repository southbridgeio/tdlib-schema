module TD::Types
  # A message with information about an ended voice chat.
  #
  # @attr duration [Integer] Call duration.
  class MessageContent::VoiceChatEnded < MessageContent
    attribute :duration, TD::Types::Integer
  end
end
