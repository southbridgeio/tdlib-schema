module TD::Types
  # Contains number of being downloaded and recently downloaded files found.
  #
  # @attr active_count [Integer] Number of active file downloads found, including paused.
  # @attr paused_count [Integer] Number of paused file downloads found.
  # @attr completed_count [Integer] Number of completed file downloads found.
  class DownloadedFileCounts < Base
    attribute :active_count, TD::Types::Coercible::Integer
    attribute :paused_count, TD::Types::Coercible::Integer
    attribute :completed_count, TD::Types::Coercible::Integer
  end
end
