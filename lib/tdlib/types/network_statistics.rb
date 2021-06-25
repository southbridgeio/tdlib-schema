module TD::Types
  # A full list of available network statistic entries.
  #
  # @attr since_date [Integer] Point in time (Unix timestamp) from which the statistics are collected.
  # @attr entries [Array<TD::Types::NetworkStatisticsEntry>] Network statistics entries.
  class NetworkStatistics < Base
    attribute :since_date, TD::Types::Integer
    attribute :entries, TD::Types::Array.of(TD::Types::NetworkStatisticsEntry)
  end
end
