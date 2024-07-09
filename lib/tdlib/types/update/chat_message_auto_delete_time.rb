module TD::Types
  # The message auto-delete or self-destruct timer setting for a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_auto_delete_time [Integer] New value of message_auto_delete_time.
  class Update::ChatMessageAutoDeleteTime < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_auto_delete_time, TD::Types::Coercible::Integer
  end
end
