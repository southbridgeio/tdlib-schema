module TD::Types
  # A message with a poll.
  #
  # @attr poll [TD::Types::Poll] The poll description.
  class MessageContent::Poll < MessageContent
    attribute :poll, TD::Types::Poll
  end
end
