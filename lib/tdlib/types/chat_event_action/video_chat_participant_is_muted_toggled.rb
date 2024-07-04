module TD::Types
  # A video chat participant was muted or unmuted.
  #
  # @attr participant_id [TD::Types::MessageSender] Identifier of the affected group call participant.
  # @attr is_muted [Boolean] New value of is_muted.
  class ChatEventAction::VideoChatParticipantIsMutedToggled < ChatEventAction
    attribute :participant_id, TD::Types::MessageSender
    attribute :is_muted, TD::Types::Bool
  end
end
