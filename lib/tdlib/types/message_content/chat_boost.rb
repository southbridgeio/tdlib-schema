module TD::Types
  # The chat was boosted by the sender of the message.
  #
  # @attr boost_count [Integer] Number of times the chat was boosted.
  class MessageContent::ChatBoost < MessageContent
    attribute :boost_count, TD::Types::Coercible::Integer
  end
end
