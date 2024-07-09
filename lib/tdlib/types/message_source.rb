module TD::Types
  # Describes source of a message.
  class MessageSource < Base
    %w[
      chat_history
      message_thread_history
      forum_topic_history
      history_preview
      chat_list
      search
      chat_event_log
      notification
      screenshot
      other
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_source/#{type}"
    end
  end
end
