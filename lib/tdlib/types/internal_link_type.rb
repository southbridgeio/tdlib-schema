module TD::Types
  # Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
  class InternalLinkType < Base
    %w[
      active_sessions
      attachment_menu_bot
      authentication_code
      background
      bot_add_to_channel
      bot_start
      bot_start_in_group
      business_chat
      change_phone_number
      chat_boost
      chat_folder_invite
      chat_folder_settings
      chat_invite
      default_message_auto_delete_timer_settings
      edit_profile_settings
      game
      instant_view
      invoice
      language_pack
      language_settings
      message
      message_draft
      passport_data_request
      phone_number_confirmation
      premium_features
      premium_gift
      premium_gift_code
      privacy_and_security_settings
      proxy
      public_chat
      qr_code_authentication
      restore_purchases
      settings
      side_menu_bot
      sticker_set
      story
      theme
      theme_settings
      unknown_deep_link
      unsupported_proxy
      user_phone_number
      user_token
      video_chat
      web_app
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/internal_link_type/#{type}"
    end
  end
end
