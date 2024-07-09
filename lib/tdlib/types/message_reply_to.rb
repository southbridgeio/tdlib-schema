module TD::Types
  # Contains information about the message or the story a message is replying to.
  class MessageReplyTo < Base
    %w[
      message
      story
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_reply_to/#{type}"
    end
  end
end
