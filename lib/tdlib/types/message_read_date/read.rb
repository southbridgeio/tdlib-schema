module TD::Types
  # Contains read date of the message.
  #
  # @attr read_date [Integer] Point in time (Unix timestamp) when the message was read by the other user.
  class MessageReadDate::Read < MessageReadDate
    attribute :read_date, TD::Types::Coercible::Integer
  end
end
