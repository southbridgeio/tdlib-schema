module TD::Types
  # A chat was blocked or unblocked.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr is_blocked [Boolean] New value of is_blocked.
  class Update::ChatIsBlocked < Update
    attribute :chat_id, TD::Types::Integer
    attribute :is_blocked, TD::Types::Bool
  end
end
