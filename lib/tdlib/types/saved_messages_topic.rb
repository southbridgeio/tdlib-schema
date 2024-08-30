module TD::Types
  # Contains information about a Saved Messages topic.
  #
  # @attr id [Integer] Unique topic identifier.
  # @attr type [TD::Types::SavedMessagesTopicType] Type of the topic.
  # @attr is_pinned [Boolean] True, if the topic is pinned.
  # @attr order [Integer] A parameter used to determine order of the topic in the topic list.
  #   Topics must be sorted by the order in descending order.
  # @attr last_message [TD::Types::Message, nil] Last message in the topic; may be null if none or unknown.
  # @attr draft_message [TD::Types::DraftMessage, nil] A draft of a message in the topic; may be null if none.
  class SavedMessagesTopic < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :type, TD::Types::SavedMessagesTopicType
    attribute :is_pinned, TD::Types::Bool
    attribute :order, TD::Types::Coercible::Integer
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
  end
end
