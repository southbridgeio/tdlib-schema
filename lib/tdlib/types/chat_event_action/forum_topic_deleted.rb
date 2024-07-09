module TD::Types
  # A forum topic was deleted.
  #
  # @attr topic_info [TD::Types::ForumTopicInfo] Information about the topic.
  class ChatEventAction::ForumTopicDeleted < ChatEventAction
    attribute :topic_info, TD::Types::ForumTopicInfo
  end
end
