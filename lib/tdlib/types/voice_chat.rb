module TD::Types
  # Describes a voice chat.
  #
  # @attr group_call_id [Integer] Group call identifier of an active voice chat; 0 if none.
  #   Full informationa about the voice chat can be received through the method getGroupCall.
  # @attr has_participants [Boolean] True, if the voice chat has participants.
  # @attr default_participant_id [TD::Types::MessageSender, nil] Default group call participant identifier to join the
  #   voice chat; may be null.
  class VoiceChat < Base
    attribute :group_call_id, TD::Types::Integer
    attribute :has_participants, TD::Types::Bool
    attribute :default_participant_id, TD::Types::MessageSender.optional.default(nil)
  end
end
