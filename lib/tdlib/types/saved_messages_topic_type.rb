module TD::Types
  # Describes type of Saved Messages topic.
  class SavedMessagesTopicType < Base
    %w[
      my_notes
      author_hidden
      saved_from_chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/saved_messages_topic_type/#{type}"
    end
  end
end
