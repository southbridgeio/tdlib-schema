module TD::Types
  # Contains information about the origin of a message.
  class MessageOrigin < Base
    %w[
      user
      hidden_user
      chat
      channel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_origin/#{type}"
    end
  end
end
