module TD::Types
  # A General forum topic has been hidden or unhidden.
  #
  # @attr is_hidden [Boolean] True, if the topic was hidden; otherwise, the topic was unhidden.
  class MessageContent::ForumTopicIsHiddenToggled < MessageContent
    attribute :is_hidden, TD::Types::Bool
  end
end
