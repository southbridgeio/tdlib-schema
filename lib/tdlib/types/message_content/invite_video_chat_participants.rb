module TD::Types
  # A message with information about an invite to a video chat.
  #
  # @attr group_call_id [Integer] Identifier of the video chat.
  #   The video chat can be received through the method getGroupCall.
  # @attr user_ids [Array<Integer>] Invited user identifiers.
  class MessageContent::InviteVideoChatParticipants < MessageContent
    attribute :group_call_id, TD::Types::Coercible::Integer
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
