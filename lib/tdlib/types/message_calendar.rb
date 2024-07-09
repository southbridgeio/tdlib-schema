module TD::Types
  # Contains information about found messages, split by days according to the option "utc_time_offset".
  #
  # @attr total_count [Integer] Total number of found messages.
  # @attr days [Array<TD::Types::MessageCalendarDay>] Information about messages sent.
  class MessageCalendar < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :days, TD::Types::Array.of(TD::Types::MessageCalendarDay)
  end
end
