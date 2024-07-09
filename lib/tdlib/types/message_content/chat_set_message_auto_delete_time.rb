module TD::Types
  # The auto-delete or self-destruct timer for messages in the chat has been changed.
  #
  # @attr message_auto_delete_time [Integer] New value auto-delete or self-destruct time, in seconds; 0 if disabled.
  # @attr from_user_id [Integer] If not 0, a user identifier, which default setting was automatically applied.
  class MessageContent::ChatSetMessageAutoDeleteTime < MessageContent
    attribute :message_auto_delete_time, TD::Types::Coercible::Integer
    attribute :from_user_id, TD::Types::Coercible::Integer
  end
end
