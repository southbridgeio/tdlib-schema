module TD::Types
  # A newly created video chat.
  #
  # @attr group_call_id [Integer] Identifier of the video chat.
  #   The video chat can be received through the method getGroupCall.
  class MessageContent::VideoChatStarted < MessageContent
    attribute :group_call_id, TD::Types::Coercible::Integer
  end
end
