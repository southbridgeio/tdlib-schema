module TD::Types
  # Describes a list of chats.
  class ChatList < Base
    %w[
      main
      archive
      folder
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_list/#{type}"
    end
  end
end
