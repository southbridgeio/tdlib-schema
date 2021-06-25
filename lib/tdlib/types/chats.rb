module TD::Types
  # Represents a list of chats.
  #
  # @attr total_count [Integer] Approximate total count of chats found.
  # @attr chat_ids [Array<Integer>] List of chat identifiers.
  class Chats < Base
    attribute :total_count, TD::Types::Integer
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
