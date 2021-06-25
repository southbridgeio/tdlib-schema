module TD::Types
  # A voice chat was created.
  #
  # @attr group_call_id [Integer] Identifier of the voice chat.
  #   The voice chat can be received through the method getGroupCall.
  class ChatEventAction::VoiceChatCreated < ChatEventAction
    attribute :group_call_id, TD::Types::Integer
  end
end
