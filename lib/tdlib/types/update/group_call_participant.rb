module TD::Types
  # Information about a group call participant was changed.
  # The updates are sent only after the group call is received through getGroupCall and only if the call is joined or
  #   being joined.
  #
  # @attr group_call_id [Integer] Identifier of group call.
  # @attr participant [TD::Types::GroupCallParticipant] New data about a participant.
  class Update::GroupCallParticipant < Update
    attribute :group_call_id, TD::Types::Integer
    attribute :participant, TD::Types::GroupCallParticipant
  end
end
