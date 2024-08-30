module TD::Types
  # Describes type of public chat.
  class PublicChatType < Base
    %w[
      has_username
      is_location_based
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/public_chat_type/#{type}"
    end
  end
end
