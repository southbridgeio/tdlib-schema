module TD::Types
  # Represents a list of chats.
  #
  # @attr total_count [Integer] Approximate total number of chats found.
  # @attr chat_ids [Array<Integer>] List of chat identifiers.
  class Chats < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
