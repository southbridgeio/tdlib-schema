module TD::Types
  # A message with information about an invite to a voice chat.
  #
  # @attr group_call_id [Integer] Identifier of the voice chat.
  #   The voice chat can be received through the method getGroupCall.
  # @attr user_ids [Array<Integer>] Invited user identifiers.
  class MessageContent::InviteVoiceChatParticipants < MessageContent
    attribute :group_call_id, TD::Types::Integer
    attribute :user_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
