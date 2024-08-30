module TD::Types
  # A forum topic was edited.
  #
  # @attr old_topic_info [TD::Types::ForumTopicInfo] Old information about the topic.
  # @attr new_topic_info [TD::Types::ForumTopicInfo] New information about the topic.
  class ChatEventAction::ForumTopicEdited < ChatEventAction
    attribute :old_topic_info, TD::Types::ForumTopicInfo
    attribute :new_topic_info, TD::Types::ForumTopicInfo
  end
end
