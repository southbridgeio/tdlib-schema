module TD::Types
  # The state of the file download list has changed.
  #
  # @attr total_size [Integer] Total size of files in the file download list, in bytes.
  # @attr total_count [Integer] Total number of files in the file download list.
  # @attr downloaded_size [Integer] Total downloaded size of files in the file download list, in bytes.
  class Update::FileDownloads < Update
    attribute :total_size, TD::Types::Coercible::Integer
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :downloaded_size, TD::Types::Coercible::Integer
  end
end
