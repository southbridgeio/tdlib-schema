module TD::Types
  # The content of a message to send.
  class InputMessageContent < Base
    %w[
      text
      animation
      audio
      document
      paid_media
      photo
      sticker
      video
      video_note
      voice_note
      location
      venue
      contact
      dice
      game
      invoice
      poll
      story
      forwarded
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_message_content/#{type}"
    end
  end
end
