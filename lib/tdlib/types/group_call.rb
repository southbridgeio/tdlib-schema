module TD::Types
  # Describes a group call.
  #
  # @attr id [Integer] Group call identifier.
  # @attr title [TD::Types::String] Group call title.
  # @attr scheduled_start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started
  #   by an administrator; 0 if it is already active or was ended.
  # @attr enabled_start_notification [Boolean] True, if the group call is scheduled and the current user will receive a
  #   notification when the group call starts.
  # @attr is_active [Boolean] True, if the call is active.
  # @attr is_rtmp_stream [Boolean] True, if the chat is an RTMP stream instead of an ordinary video chat.
  # @attr is_joined [Boolean] True, if the call is joined.
  # @attr need_rejoin [Boolean] True, if user was kicked from the call because of network loss and the call needs to be
  #   rejoined.
  # @attr can_be_managed [Boolean] True, if the current user can manage the group call.
  # @attr participant_count [Integer] Number of participants in the group call.
  # @attr has_hidden_listeners [Boolean] True, if group call participants, which are muted, aren't returned in
  #   participant list.
  # @attr loaded_all_participants [Boolean] True, if all group call participants are loaded.
  # @attr recent_speakers [Array<TD::Types::GroupCallRecentSpeaker>] At most 3 recently speaking users in the group
  #   call.
  # @attr is_my_video_enabled [Boolean] True, if the current user's video is enabled.
  # @attr is_my_video_paused [Boolean] True, if the current user's video is paused.
  # @attr can_enable_video [Boolean] True, if the current user can broadcast video or share screen.
  # @attr mute_new_participants [Boolean] True, if only group call administrators can unmute new participants.
  # @attr can_toggle_mute_new_participants [Boolean] True, if the current user can enable or disable
  #   mute_new_participants setting.
  # @attr record_duration [Integer] Duration of the ongoing group call recording, in seconds; 0 if none.
  #   An {TD::Types::Update::GroupCall} update is not triggered when value of this field changes, but the same
  #   recording goes on.
  # @attr is_video_recorded [Boolean] True, if a video file is being recorded for the call.
  # @attr duration [Integer] Call duration, in seconds; for ended calls only.
  class GroupCall < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :scheduled_start_date, TD::Types::Coercible::Integer
    attribute :enabled_start_notification, TD::Types::Bool
    attribute :is_active, TD::Types::Bool
    attribute :is_rtmp_stream, TD::Types::Bool
    attribute :is_joined, TD::Types::Bool
    attribute :need_rejoin, TD::Types::Bool
    attribute :can_be_managed, TD::Types::Bool
    attribute :participant_count, TD::Types::Coercible::Integer
    attribute :has_hidden_listeners, TD::Types::Bool
    attribute :loaded_all_participants, TD::Types::Bool
    attribute :recent_speakers, TD::Types::Array.of(TD::Types::GroupCallRecentSpeaker)
    attribute :is_my_video_enabled, TD::Types::Bool
    attribute :is_my_video_paused, TD::Types::Bool
    attribute :can_enable_video, TD::Types::Bool
    attribute :mute_new_participants, TD::Types::Bool
    attribute :can_toggle_mute_new_participants, TD::Types::Bool
    attribute :record_duration, TD::Types::Coercible::Integer
    attribute :is_video_recorded, TD::Types::Bool
    attribute :duration, TD::Types::Coercible::Integer
  end
end
