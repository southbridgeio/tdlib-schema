module TD::Types
  # Describes an internal https://t.me or tg: link, which must be processed by the app in a special way.
  class InternalLinkType < Base
    %w[
      active_sessions
      authentication_code
      background
      bot_start
      bot_start_in_group
      change_phone_number
      chat_invite
      filter_settings
      game
      language_pack
      message
      message_draft
      passport_data_request
      phone_number_confirmation
      proxy
      public_chat
      qr_code_authentication
      settings
      sticker_set
      theme
      theme_settings
      unknown_deep_link
      unsupported_proxy
      video_chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/internal_link_type/#{type}"
    end
  end
end
