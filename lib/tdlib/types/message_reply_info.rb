module TD::Types
  # Contains information about replies to a message.
  #
  # @attr reply_count [Integer] Number of times the message was directly or indirectly replied.
  # @attr recent_replier_ids [Array<TD::Types::MessageSender>] Identifiers of at most 3 recent repliers to the message;
  #   available in channels with a discussion supergroup.
  #   The users and chats are expected to be inaccessible: only their photo and name will be available.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming reply to the message.
  # @attr last_read_outbox_message_id [Integer] Identifier of the last read outgoing reply to the message.
  # @attr last_message_id [Integer] Identifier of the last reply to the message.
  class MessageReplyInfo < Base
    attribute :reply_count, TD::Types::Coercible::Integer
    attribute :recent_replier_ids, TD::Types::Array.of(TD::Types::MessageSender)
    attribute :last_read_inbox_message_id, TD::Types::Coercible::Integer
    attribute :last_read_outbox_message_id, TD::Types::Coercible::Integer
    attribute :last_message_id, TD::Types::Coercible::Integer
  end
end
