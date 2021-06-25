module TD::Types
  # Represents a group call participant.
  #
  # @attr participant_id [TD::Types::MessageSender] Identifier of the group call participant.
  # @attr source [Integer] User's synchronization source.
  # @attr bio [String] The participant user's bio or the participant chat's description.
  # @attr is_current_user [Boolean] True, if the participant is the current user.
  # @attr is_speaking [Boolean] True, if the participant is speaking as set by setGroupCallParticipantIsSpeaking.
  # @attr is_hand_raised [Boolean] True, if the participant hand is raised.
  # @attr can_be_muted_for_all_users [Boolean] True, if the current user can mute the participant for all other group
  #   call participants.
  # @attr can_be_unmuted_for_all_users [Boolean] True, if the current user can allow the participant to unmute themself
  #   or unmute the participant (if the participant is the current user).
  # @attr can_be_muted_for_current_user [Boolean] True, if the current user can mute the participant only for self.
  # @attr can_be_unmuted_for_current_user [Boolean] True, if the current user can unmute the participant for self.
  # @attr is_muted_for_all_users [Boolean] True, if the participant is muted for all users.
  # @attr is_muted_for_current_user [Boolean] True, if the participant is muted for the current user.
  # @attr can_unmute_self [Boolean] True, if the participant is muted for all users, but can unmute themself.
  # @attr volume_level [Integer] Participant's volume level; 1-20000 in hundreds of percents.
  # @attr order [String] User's order in the group call participant list.
  #   Orders must be compared lexicographically.
  #   The bigger is order, the higher is user in the list.
  #   If order is empty, the user must be removed from the participant list.
  class GroupCallParticipant < Base
    attribute :participant_id, TD::Types::MessageSender
    attribute :source, TD::Types::Integer
    attribute :bio, TD::Types::String
    attribute :is_current_user, TD::Types::Bool
    attribute :is_speaking, TD::Types::Bool
    attribute :is_hand_raised, TD::Types::Bool
    attribute :can_be_muted_for_all_users, TD::Types::Bool
    attribute :can_be_unmuted_for_all_users, TD::Types::Bool
    attribute :can_be_muted_for_current_user, TD::Types::Bool
    attribute :can_be_unmuted_for_current_user, TD::Types::Bool
    attribute :is_muted_for_all_users, TD::Types::Bool
    attribute :is_muted_for_current_user, TD::Types::Bool
    attribute :can_unmute_self, TD::Types::Bool
    attribute :volume_level, TD::Types::Integer
    attribute :order, TD::Types::String
  end
end
