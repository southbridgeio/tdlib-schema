module TD::Types
  # Represents a date range.
  #
  # @attr start_date [Integer] Point in time (Unix timestamp) at which the date range begins.
  # @attr end_date [Integer] Point in time (Unix timestamp) at which the date range ends.
  class DateRange < Base
    attribute :start_date, TD::Types::Integer
    attribute :end_date, TD::Types::Integer
  end
end
