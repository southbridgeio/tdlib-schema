module TD::Types
  # The message will be sent at the specified date.
  #
  # @attr send_date [Integer] Point in time (Unix timestamp) when the message will be sent.
  #   The date must be within 367 days in the future.
  class MessageSchedulingState::SendAtDate < MessageSchedulingState
    attribute :send_date, TD::Types::Coercible::Integer
  end
end
