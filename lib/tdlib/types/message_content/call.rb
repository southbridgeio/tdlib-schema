module TD::Types
  # A message with information about an ended call.
  #
  # @attr is_video [Boolean] True, if the call was a video call.
  # @attr discard_reason [TD::Types::CallDiscardReason] Reason why the call was discarded.
  # @attr duration [Integer] Call duration, in seconds.
  class MessageContent::Call < MessageContent
    attribute :is_video, TD::Types::Bool
    attribute :discard_reason, TD::Types::CallDiscardReason
    attribute :duration, TD::Types::Integer
  end
end
