module TD::Types
  # The number of online group members has changed.
  # This update with non-zero number of online group members is sent only for currently opened chats.
  # There is no guarantee that it is sent just after the number of online users has changed.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  # @attr online_member_count [Integer] New number of online members in the chat, or 0 if unknown.
  class Update::ChatOnlineMemberCount < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :online_member_count, TD::Types::Coercible::Integer
  end
end
