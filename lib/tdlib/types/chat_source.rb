module TD::Types
  # Describes a reason why an external chat is shown in a chat list.
  class ChatSource < Base
    %w[
      mtproto_proxy
      public_service_announcement
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_source/#{type}"
    end
  end
end
