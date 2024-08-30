module TD::Types
  # Describes type of link preview.
  class LinkPreviewType < Base
    %w[
      album
      animation
      app
      article
      audio
      background
      channel_boost
      chat
      document
      embedded_animation_player
      embedded_audio_player
      embedded_video_player
      invoice
      message
      photo
      premium_gift_code
      shareable_chat_folder
      sticker
      sticker_set
      story
      supergroup_boost
      theme
      unsupported
      user
      video
      video_chat
      video_note
      voice_note
      web_app
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/link_preview_type/#{type}"
    end
  end
end
