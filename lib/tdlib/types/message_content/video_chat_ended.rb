module TD::Types
  # A message with information about an ended video chat.
  #
  # @attr duration [Integer] Call duration, in seconds.
  class MessageContent::VideoChatEnded < MessageContent
    attribute :duration, TD::Types::Coercible::Integer
  end
end
