module TD::Types
  # Tags used in Saved Messages or a Saved Messages topic have changed.
  #
  # @attr saved_messages_topic_id [Integer] Identifier of Saved Messages topic which tags were changed; 0 if tags for
  #   the whole chat has changed.
  # @attr tags [TD::Types::SavedMessagesTags] The new tags.
  class Update::SavedMessagesTags < Update
    attribute :saved_messages_topic_id, TD::Types::Coercible::Integer
    attribute :tags, TD::Types::SavedMessagesTags
  end
end
