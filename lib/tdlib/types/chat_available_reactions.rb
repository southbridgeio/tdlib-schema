module TD::Types
  # Describes reactions available in the chat.
  class ChatAvailableReactions < Base
    %w[
      all
      some
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_available_reactions/#{type}"
    end
  end
end
