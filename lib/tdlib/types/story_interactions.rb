module TD::Types
  # Represents a list of interactions with a story.
  #
  # @attr total_count [Integer] Approximate total number of interactions found.
  # @attr total_forward_count [Integer] Approximate total number of found forwards and reposts; always 0 for chat
  #   stories.
  # @attr total_reaction_count [Integer] Approximate total number of found reactions; always 0 for chat stories.
  # @attr interactions [Array<TD::Types::StoryInteraction>] List of story interactions.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class StoryInteractions < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :total_forward_count, TD::Types::Coercible::Integer
    attribute :total_reaction_count, TD::Types::Coercible::Integer
    attribute :interactions, TD::Types::Array.of(TD::Types::StoryInteraction)
    attribute :next_offset, TD::Types::String
  end
end
