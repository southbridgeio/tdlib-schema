module TD::Types
  # Contains a list of stories found by a search.
  #
  # @attr total_count [Integer] Approximate total number of stories found.
  # @attr stories [Array<TD::Types::Story>] List of stories.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class FoundStories < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :stories, TD::Types::Array.of(TD::Types::Story)
    attribute :next_offset, TD::Types::String
  end
end
