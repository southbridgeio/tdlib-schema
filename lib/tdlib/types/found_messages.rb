module TD::Types
  # Contains a list of messages found by a search.
  #
  # @attr total_count [Integer] Approximate total number of messages found; -1 if unknown.
  # @attr messages [Array<TD::Types::Message>] List of messages.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class FoundMessages < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :messages, TD::Types::Array.of(TD::Types::Message)
    attribute :next_offset, TD::Types::String
  end
end
