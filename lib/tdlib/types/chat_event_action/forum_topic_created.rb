module TD::Types
  # A new forum topic was created.
  #
  # @attr topic_info [TD::Types::ForumTopicInfo] Information about the topic.
  class ChatEventAction::ForumTopicCreated < ChatEventAction
    attribute :topic_info, TD::Types::ForumTopicInfo
  end
end
