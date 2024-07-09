module TD::Types
  # A pinned forum topic was changed.
  #
  # @attr old_topic_info [TD::Types::ForumTopicInfo, nil] Information about the old pinned topic; may be null.
  # @attr new_topic_info [TD::Types::ForumTopicInfo, nil] Information about the new pinned topic; may be null.
  class ChatEventAction::ForumTopicPinned < ChatEventAction
    attribute :old_topic_info, TD::Types::ForumTopicInfo.optional.default(nil)
    attribute :new_topic_info, TD::Types::ForumTopicInfo.optional.default(nil)
  end
end
