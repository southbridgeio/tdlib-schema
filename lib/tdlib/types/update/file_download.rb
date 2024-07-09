module TD::Types
  # A file download was changed.
  # This update is sent only after file download list is loaded for the first time.
  #
  # @attr file_id [Integer] File identifier.
  # @attr complete_date [Integer] Point in time (Unix timestamp) when the file downloading was completed; 0 if the file
  #   downloading isn't completed.
  # @attr is_paused [Boolean] True, if downloading of the file is paused.
  # @attr counts [TD::Types::DownloadedFileCounts] New number of being downloaded and recently downloaded files found.
  class Update::FileDownload < Update
    attribute :file_id, TD::Types::Coercible::Integer
    attribute :complete_date, TD::Types::Coercible::Integer
    attribute :is_paused, TD::Types::Bool
    attribute :counts, TD::Types::DownloadedFileCounts
  end
end
