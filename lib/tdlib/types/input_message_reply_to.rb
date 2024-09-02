module TD::Types
  # Contains information about the message or the story to be replied.
  class InputMessageReplyTo < Base
    %w[
      message
      external_message
      story
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_message_reply_to/#{type}"
    end
  end
end
