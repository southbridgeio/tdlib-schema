module TD::Types
  # Send away messages only in the specified time span.
  #
  # @attr start_date [Integer] Point in time (Unix timestamp) when the away messages will start to be sent.
  # @attr end_date [Integer] Point in time (Unix timestamp) when the away messages will stop to be sent.
  class BusinessAwayMessageSchedule::Custom < BusinessAwayMessageSchedule
    attribute :start_date, TD::Types::Coercible::Integer
    attribute :end_date, TD::Types::Coercible::Integer
  end
end
