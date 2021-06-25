module TD::Types
  # Contains a detailed statistics about a chat.
  class ChatStatistics < Base
    %w[
      supergroup
      channel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_statistics/#{type}"
    end
  end
end
