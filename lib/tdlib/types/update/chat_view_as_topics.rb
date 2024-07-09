module TD::Types
  # A chat default appearance has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr view_as_topics [Boolean] New value of view_as_topics.
  class Update::ChatViewAsTopics < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :view_as_topics, TD::Types::Bool
  end
end
