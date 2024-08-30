module TD::Types
  # Contains 0-based positions of matched objects.
  #
  # @attr total_count [Integer] Total number of matched objects.
  # @attr positions [Array<Integer>] The positions of the matched objects.
  class FoundPositions < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :positions, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
