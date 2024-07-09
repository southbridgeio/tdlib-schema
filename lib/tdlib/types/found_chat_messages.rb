module TD::Types
  # Contains a list of messages found by a search in a given chat.
  #
  # @attr total_count [Integer] Approximate total number of messages found; -1 if unknown.
  # @attr messages [Array<TD::Types::Message>] List of messages.
  # @attr next_from_message_id [Integer] The offset for the next request.
  #   If 0, there are no more results.
  class FoundChatMessages < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :messages, TD::Types::Array.of(TD::Types::Message)
    attribute :next_from_message_id, TD::Types::Coercible::Integer
  end
end
