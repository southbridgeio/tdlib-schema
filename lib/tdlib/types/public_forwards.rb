module TD::Types
  # Represents a list of public forwards and reposts as a story of a message or a story.
  #
  # @attr total_count [Integer] Approximate total number of messages and stories found.
  # @attr forwards [Array<TD::Types::PublicForward>] List of found public forwards and reposts.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class PublicForwards < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :forwards, TD::Types::Array.of(TD::Types::PublicForward)
    attribute :next_offset, TD::Types::String
  end
end
