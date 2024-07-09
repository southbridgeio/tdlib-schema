module TD::Types
  # Describes a photo to be set as a user profile or chat photo.
  class InputChatPhoto < Base
    %w[
      previous
      static
      animation
      sticker
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_chat_photo/#{type}"
    end
  end
end
