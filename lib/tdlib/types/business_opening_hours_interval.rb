module TD::Types
  # Describes an interval of time when the business is open.
  #
  # @attr start_minute [Integer] The minute's sequence number in a week, starting on Monday, marking the start of the
  #   time interval during which the business is open; 0-7*24*60.
  # @attr end_minute [Integer] The minute's sequence number in a week, starting on Monday, marking the end of the time
  #   interval during which the business is open; 1-8*24*60.
  class BusinessOpeningHoursInterval < Base
    attribute :start_minute, TD::Types::Coercible::Integer
    attribute :end_minute, TD::Types::Coercible::Integer
  end
end
