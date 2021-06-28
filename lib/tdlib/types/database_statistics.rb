module TD::Types
  # Contains database statistics.
  #
  # @attr statistics [TD::Types::String] Database statistics in an unspecified human-readable format.
  class DatabaseStatistics < Base
    attribute :statistics, TD::Types::String
  end
end
