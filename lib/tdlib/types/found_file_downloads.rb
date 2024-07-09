module TD::Types
  # Contains a list of downloaded files, found by a search.
  #
  # @attr total_counts [TD::Types::DownloadedFileCounts] Total number of suitable files, ignoring offset.
  # @attr files [Array<TD::Types::FileDownload>] The list of files.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class FoundFileDownloads < Base
    attribute :total_counts, TD::Types::DownloadedFileCounts
    attribute :files, TD::Types::Array.of(TD::Types::FileDownload)
    attribute :next_offset, TD::Types::String
  end
end
