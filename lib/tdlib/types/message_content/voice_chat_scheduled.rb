module TD::Types
  # A new voice chat was scheduled.
  #
  # @attr group_call_id [Integer] Identifier of the voice chat.
  #   The voice chat can be received through the method getGroupCall.
  # @attr start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started by an
  #   administrator.
  class MessageContent::VoiceChatScheduled < MessageContent
    attribute :group_call_id, TD::Types::Integer
    attribute :start_date, TD::Types::Integer
  end
end
