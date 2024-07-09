module TD::Types
  # A forum topic was closed or reopened.
  #
  # @attr topic_info [TD::Types::ForumTopicInfo] New information about the topic.
  class ChatEventAction::ForumTopicToggleIsClosed < ChatEventAction
    attribute :topic_info, TD::Types::ForumTopicInfo
  end
end
