module TD::Types
  # Contains content of a push message notification.
  class PushMessageContent < Base
    %w[
      hidden
      animation
      audio
      contact
      contact_registered
      document
      game
      game_score
      invoice
      location
      paid_media
      photo
      poll
      premium_gift_code
      premium_giveaway
      screenshot_taken
      sticker
      story
      text
      video
      video_note
      voice_note
      basic_group_chat_create
      chat_add_members
      chat_change_photo
      chat_change_title
      chat_set_background
      chat_set_theme
      chat_delete_member
      chat_join_by_link
      chat_join_by_request
      recurring_payment
      suggest_profile_photo
      message_forwards
      media_album
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/push_message_content/#{type}"
    end
  end
end
