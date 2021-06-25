module TD::Types
  # Represents a chat event.
  class ChatEventAction < Base
    %w[
      message_edited
      message_deleted
      poll_stopped
      message_pinned
      message_unpinned
      member_joined
      member_joined_by_invite_link
      member_left
      member_invited
      member_promoted
      member_restricted
      title_changed
      permissions_changed
      description_changed
      username_changed
      photo_changed
      invites_toggled
      linked_chat_changed
      slow_mode_delay_changed
      message_ttl_setting_changed
      sign_messages_toggled
      sticker_set_changed
      location_changed
      is_all_history_available_toggled
      invite_link_edited
      invite_link_revoked
      invite_link_deleted
      voice_chat_created
      voice_chat_discarded
      voice_chat_participant_is_muted_toggled
      voice_chat_participant_volume_level_changed
      voice_chat_mute_new_participants_toggled
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_event_action/#{type}"
    end
  end
end
