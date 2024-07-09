module TD::Types
  # A forum topic has been closed or opened.
  #
  # @attr is_closed [Boolean] True, if the topic was closed; otherwise, the topic was reopened.
  class MessageContent::ForumTopicIsClosedToggled < MessageContent
    attribute :is_closed, TD::Types::Bool
  end
end
