module TD::Types
  # A voice chat participant volume level was changed.
  #
  # @attr participant_id [TD::Types::MessageSender] Identifier of the affected group call participant.
  # @attr volume_level [Integer] New value of volume_level; 1-20000 in hundreds of percents.
  class ChatEventAction::VoiceChatParticipantVolumeLevelChanged < ChatEventAction
    attribute :participant_id, TD::Types::MessageSender
    attribute :volume_level, TD::Types::Integer
  end
end
