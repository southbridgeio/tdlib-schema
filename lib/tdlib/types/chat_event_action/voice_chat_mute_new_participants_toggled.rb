module TD::Types
  # The mute_new_participants setting of a voice chat was toggled.
  #
  # @attr mute_new_participants [Boolean] New value of the mute_new_participants setting.
  class ChatEventAction::VoiceChatMuteNewParticipantsToggled < ChatEventAction
    attribute :mute_new_participants, TD::Types::Bool
  end
end
