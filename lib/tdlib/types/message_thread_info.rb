module TD::Types
  # Contains information about a message thread.
  #
  # @attr chat_id [Integer] Identifier of the chat to which the message thread belongs.
  # @attr message_thread_id [Integer] Message thread identifier, unique within the chat.
  # @attr reply_info [TD::Types::MessageReplyInfo] Contains information about the message thread.
  # @attr messages [Array<TD::Types::Message>] The messages from which the thread starts.
  #   The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  # @attr draft_message [TD::Types::DraftMessage, nil] A draft of a message in the message thread; may be null.
  class MessageThreadInfo < Base
    attribute :chat_id, TD::Types::Integer
    attribute :message_thread_id, TD::Types::Integer
    attribute :reply_info, TD::Types::MessageReplyInfo
    attribute :messages, TD::Types::Array.of(TD::Types::Message)
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
  end
end
