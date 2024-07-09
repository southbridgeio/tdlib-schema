module TD::Types
  # The message content was opened.
  # Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  class Update::MessageContentOpened < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
