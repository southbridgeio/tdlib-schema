module TD::Types
  # Number of Saved Messages topics has changed.
  #
  # @attr topic_count [Integer] Approximate total number of Saved Messages topics.
  class Update::SavedMessagesTopicCount < Update
    attribute :topic_count, TD::Types::Coercible::Integer
  end
end
