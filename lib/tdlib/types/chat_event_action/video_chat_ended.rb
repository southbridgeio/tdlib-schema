module TD::Types
  # A video chat was ended.
  #
  # @attr group_call_id [Integer] Identifier of the video chat.
  #   The video chat can be received through the method getGroupCall.
  class ChatEventAction::VideoChatEnded < ChatEventAction
    attribute :group_call_id, TD::Types::Coercible::Integer
  end
end
