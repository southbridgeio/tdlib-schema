module TD::Types
  # Describes a forum topic.
  #
  # @attr info [TD::Types::ForumTopicInfo] Basic information about the topic.
  # @attr last_message [TD::Types::Message, nil] Last message in the topic; may be null if unknown.
  # @attr is_pinned [Boolean] True, if the topic is pinned in the topic list.
  # @attr unread_count [Integer] Number of unread messages in the topic.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming message.
  # @attr last_read_outbox_message_id [Integer] Identifier of the last read outgoing message.
  # @attr unread_mention_count [Integer] Number of unread messages with a mention/reply in the topic.
  # @attr unread_reaction_count [Integer] Number of messages with unread reactions in the topic.
  # @attr notification_settings [TD::Types::ChatNotificationSettings] Notification settings for the topic.
  # @attr draft_message [TD::Types::DraftMessage, nil] A draft of a message in the topic; may be null if none.
  class ForumTopic < Base
    attribute :info, TD::Types::ForumTopicInfo
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :is_pinned, TD::Types::Bool
    attribute :unread_count, TD::Types::Coercible::Integer
    attribute :last_read_inbox_message_id, TD::Types::Coercible::Integer
    attribute :last_read_outbox_message_id, TD::Types::Coercible::Integer
    attribute :unread_mention_count, TD::Types::Coercible::Integer
    attribute :unread_reaction_count, TD::Types::Coercible::Integer
    attribute :notification_settings, TD::Types::ChatNotificationSettings
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
  end
end
