module TD::Types
  # Contains information about the sender of a message.
  class MessageSender < Base
    %w[
      user
      chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_sender/#{type}"
    end
  end
end
