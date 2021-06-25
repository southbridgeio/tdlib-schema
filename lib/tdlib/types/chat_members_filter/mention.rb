module TD::Types
  # Returns users which can be mentioned in the chat.
  #
  # @attr message_thread_id [Integer] If non-zero, the identifier of the current message thread.
  class ChatMembersFilter::Mention < ChatMembersFilter
    attribute :message_thread_id, TD::Types::Integer
  end
end
