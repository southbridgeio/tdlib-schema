module TD::Types
  # A voice chat was discarded.
  #
  # @attr group_call_id [Integer] Identifier of the voice chat.
  #   The voice chat can be received through the method getGroupCall.
  class ChatEventAction::VoiceChatDiscarded < ChatEventAction
    attribute :group_call_id, TD::Types::Integer
  end
end
