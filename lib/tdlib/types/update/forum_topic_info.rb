module TD::Types
  # Basic information about a topic in a forum chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr info [TD::Types::ForumTopicInfo] New information about the topic.
  class Update::ForumTopicInfo < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :info, TD::Types::ForumTopicInfo
  end
end
