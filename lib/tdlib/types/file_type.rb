module TD::Types
  # Represents the type of file.
  class FileType < Base
    %w[
      none
      animation
      audio
      document
      notification_sound
      photo
      photo_story
      profile_photo
      secret
      secret_thumbnail
      secure
      sticker
      thumbnail
      unknown
      video
      video_note
      video_story
      voice_note
      wallpaper
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/file_type/#{type}"
    end
  end
end
