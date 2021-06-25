module TD::Types
  # Contains information about replies to a message.
  #
  # @attr reply_count [Integer] Number of times the message was directly or indirectly replied.
  # @attr recent_repliers [Array<TD::Types::MessageSender>] Recent repliers to the message; available in channels with
  #   a discussion supergroup.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming reply to the message.
  # @attr last_read_outbox_message_id [Integer] Identifier of the last read outgoing reply to the message.
  # @attr last_message_id [Integer] Identifier of the last reply to the message.
  class MessageReplyInfo < Base
    attribute :reply_count, TD::Types::Integer
    attribute :recent_repliers, TD::Types::Array.of(TD::Types::MessageSender)
    attribute :last_read_inbox_message_id, TD::Types::Integer
    attribute :last_read_outbox_message_id, TD::Types::Integer
    attribute :last_message_id, TD::Types::Integer
  end
end
