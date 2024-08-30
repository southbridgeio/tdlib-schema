module TD::Types
  # Contains a list of time zones.
  #
  # @attr time_zones [Array<TD::Types::TimeZone>] A list of time zones.
  class TimeZones < Base
    attribute :time_zones, TD::Types::Array.of(TD::Types::TimeZone)
  end
end
