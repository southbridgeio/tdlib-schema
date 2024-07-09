module TD::Types
  # Contains a list of message positions.
  #
  # @attr total_count [Integer] Total number of messages found.
  # @attr positions [Array<TD::Types::MessagePosition>] List of message positions.
  class MessagePositions < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :positions, TD::Types::Array.of(TD::Types::MessagePosition)
  end
end
