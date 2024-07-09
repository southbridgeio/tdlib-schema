module TD::Types
  # Represents a chat event.
  class ChatEventAction < Base
    %w[
      message_edited
      message_deleted
      message_pinned
      message_unpinned
      poll_stopped
      member_joined
      member_joined_by_invite_link
      member_joined_by_request
      member_invited
      member_left
      member_promoted
      member_restricted
      available_reactions_changed
      background_changed
      description_changed
      emoji_status_changed
      linked_chat_changed
      location_changed
      message_auto_delete_time_changed
      permissions_changed
      photo_changed
      slow_mode_delay_changed
      sticker_set_changed
      custom_emoji_sticker_set_changed
      title_changed
      username_changed
      active_usernames_changed
      accent_color_changed
      profile_accent_color_changed
      has_protected_content_toggled
      invites_toggled
      is_all_history_available_toggled
      has_aggressive_anti_spam_enabled_toggled
      sign_messages_toggled
      invite_link_edited
      invite_link_revoked
      invite_link_deleted
      video_chat_created
      video_chat_ended
      video_chat_mute_new_participants_toggled
      video_chat_participant_is_muted_toggled
      video_chat_participant_volume_level_changed
      is_forum_toggled
      forum_topic_created
      forum_topic_edited
      forum_topic_toggle_is_closed
      forum_topic_toggle_is_hidden
      forum_topic_deleted
      forum_topic_pinned
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_event_action/#{type}"
    end
  end
end
