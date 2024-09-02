module TD::Types
  # The General forum topic was hidden or unhidden.
  #
  # @attr topic_info [TD::Types::ForumTopicInfo] New information about the topic.
  class ChatEventAction::ForumTopicToggleIsHidden < ChatEventAction
    attribute :topic_info, TD::Types::ForumTopicInfo
  end
end
