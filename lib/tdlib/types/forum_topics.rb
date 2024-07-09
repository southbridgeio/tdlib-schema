module TD::Types
  # Describes a list of forum topics.
  #
  # @attr total_count [Integer] Approximate total number of forum topics found.
  # @attr topics [Array<TD::Types::ForumTopic>] List of forum topics.
  # @attr next_offset_date [Integer] Offset date for the next getForumTopics request.
  # @attr next_offset_message_id [Integer] Offset message identifier for the next getForumTopics request.
  # @attr next_offset_message_thread_id [Integer] Offset message thread identifier for the next getForumTopics request.
  class ForumTopics < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :topics, TD::Types::Array.of(TD::Types::ForumTopic)
    attribute :next_offset_date, TD::Types::Coercible::Integer
    attribute :next_offset_message_id, TD::Types::Coercible::Integer
    attribute :next_offset_message_thread_id, TD::Types::Coercible::Integer
  end
end
