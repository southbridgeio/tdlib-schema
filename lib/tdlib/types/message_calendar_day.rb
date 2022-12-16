module TD::Types
  # Contains information about found messages sent in a specific day.
  #
  # @attr total_count [Integer] Total number of found messages sent in the day.
  # @attr message [TD::Types::Message] First message sent in the day.
  class MessageCalendarDay < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :message, TD::Types::Message
  end
end
