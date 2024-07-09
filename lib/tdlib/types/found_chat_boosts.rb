module TD::Types
  # Contains a list of boosts applied to a chat.
  #
  # @attr total_count [Integer] Total number of boosts applied to the chat.
  # @attr boosts [Array<TD::Types::ChatBoost>] List of boosts.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class FoundChatBoosts < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :boosts, TD::Types::Array.of(TD::Types::ChatBoost)
    attribute :next_offset, TD::Types::String
  end
end
