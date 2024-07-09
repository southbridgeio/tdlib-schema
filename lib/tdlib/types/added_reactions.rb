module TD::Types
  # Represents a list of reactions added to a message.
  #
  # @attr total_count [Integer] The total number of found reactions.
  # @attr reactions [Array<TD::Types::AddedReaction>] The list of added reactions.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class AddedReactions < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :reactions, TD::Types::Array.of(TD::Types::AddedReaction)
    attribute :next_offset, TD::Types::String
  end
end
