module TD::Types
  # Represents a list of message senders, which can be used to send messages in a chat.
  #
  # @attr senders [Array<TD::Types::ChatMessageSender>] List of available message senders.
  class ChatMessageSenders < Base
    attribute :senders, TD::Types::Array.of(TD::Types::ChatMessageSender)
  end
end
