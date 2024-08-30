module TD::Types
  # A new video chat was scheduled.
  #
  # @attr group_call_id [Integer] Identifier of the video chat.
  #   The video chat can be received through the method getGroupCall.
  # @attr start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started by an
  #   administrator.
  class MessageContent::VideoChatScheduled < MessageContent
    attribute :group_call_id, TD::Types::Coercible::Integer
    attribute :start_date, TD::Types::Coercible::Integer
  end
end
