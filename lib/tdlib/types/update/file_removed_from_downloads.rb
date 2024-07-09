module TD::Types
  # A file was removed from the file download list.
  # This update is sent only after file download list is loaded for the first time.
  #
  # @attr file_id [Integer] File identifier.
  # @attr counts [TD::Types::DownloadedFileCounts] New number of being downloaded and recently downloaded files found.
  class Update::FileRemovedFromDownloads < Update
    attribute :file_id, TD::Types::Coercible::Integer
    attribute :counts, TD::Types::DownloadedFileCounts
  end
end
