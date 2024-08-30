module TD::Types
  # A forum topic has been created.
  #
  # @attr name [TD::Types::String] Name of the topic.
  # @attr icon [TD::Types::ForumTopicIcon] Icon of the topic.
  class MessageContent::ForumTopicCreated < MessageContent
    attribute :name, TD::Types::String
    attribute :icon, TD::Types::ForumTopicIcon
  end
end
