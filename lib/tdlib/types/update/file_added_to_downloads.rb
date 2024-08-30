module TD::Types
  # A file was added to the file download list.
  # This update is sent only after file download list is loaded for the first time.
  #
  # @attr file_download [TD::Types::FileDownload] The added file download.
  # @attr counts [TD::Types::DownloadedFileCounts] New number of being downloaded and recently downloaded files found.
  class Update::FileAddedToDownloads < Update
    attribute :file_download, TD::Types::FileDownload
    attribute :counts, TD::Types::DownloadedFileCounts
  end
end
