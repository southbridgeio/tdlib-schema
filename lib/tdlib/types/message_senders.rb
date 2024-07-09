module TD::Types
  # Represents a list of message senders.
  #
  # @attr total_count [Integer] Approximate total number of messages senders found.
  # @attr senders [Array<TD::Types::MessageSender>] List of message senders.
  class MessageSenders < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :senders, TD::Types::Array.of(TD::Types::MessageSender)
  end
end
