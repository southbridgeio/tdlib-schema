module TD::Types
  # Contains the content of a message.
  class MessageContent < Base
    %w[
      text
      animation
      audio
      document
      photo
      expired_photo
      sticker
      video
      expired_video
      video_note
      voice_note
      location
      venue
      contact
      animated_emoji
      dice
      game
      poll
      invoice
      call
      video_chat_scheduled
      video_chat_started
      video_chat_ended
      invite_video_chat_participants
      basic_group_chat_create
      supergroup_chat_create
      chat_change_title
      chat_change_photo
      chat_delete_photo
      chat_add_members
      chat_join_by_link
      chat_join_by_request
      chat_delete_member
      chat_upgrade_to
      chat_upgrade_from
      pin_message
      screenshot_taken
      chat_set_theme
      chat_set_ttl
      custom_service_action
      game_score
      payment_successful
      payment_successful_bot
      contact_registered
      website_connected
      passport_data_sent
      passport_data_received
      proximity_alert_triggered
      unsupported
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_content/#{type}"
    end
  end
end
