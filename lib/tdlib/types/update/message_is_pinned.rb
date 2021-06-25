module TD::Types
  # The message pinned state was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] The message identifier.
  # @attr is_pinned [Boolean] True, if the message is pinned.
  class Update::MessageIsPinned < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :is_pinned, TD::Types::Bool
  end
end
