module TD::Types
  # Describes a video chat.
  #
  # @attr group_call_id [Integer] Group call identifier of an active video chat; 0 if none.
  #   Full information about the video chat can be received through the method getGroupCall.
  # @attr has_participants [Boolean] True, if the video chat has participants.
  # @attr default_participant_id [TD::Types::MessageSender, nil] Default group call participant identifier to join the
  #   video chat; may be null.
  class VideoChat < Base
    attribute :group_call_id, TD::Types::Coercible::Integer
    attribute :has_participants, TD::Types::Bool
    attribute :default_participant_id, TD::Types::MessageSender.optional.default(nil)
  end
end
