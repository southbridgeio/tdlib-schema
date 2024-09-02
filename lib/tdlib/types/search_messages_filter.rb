module TD::Types
  # Represents a filter for message search results.
  class SearchMessagesFilter < Base
    %w[
      empty
      animation
      audio
      document
      photo
      video
      voice_note
      photo_and_video
      url
      chat_photo
      video_note
      voice_and_video_note
      mention
      unread_mention
      unread_reaction
      failed_to_send
      pinned
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/search_messages_filter/#{type}"
    end
  end
end
