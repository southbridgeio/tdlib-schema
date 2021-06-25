module TD::Types
  # A newly created voice chat.
  #
  # @attr group_call_id [Integer] Identifier of the voice chat.
  #   The voice chat can be received through the method getGroupCall.
  class MessageContent::VoiceChatStarted < MessageContent
    attribute :group_call_id, TD::Types::Integer
  end
end
