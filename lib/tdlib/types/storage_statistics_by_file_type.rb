module TD::Types
  # Contains the storage usage statistics for a specific file type.
  #
  # @attr file_type [TD::Types::FileType] File type.
  # @attr size [Integer] Total size of the files, in bytes.
  # @attr count [Integer] Total number of files.
  class StorageStatisticsByFileType < Base
    attribute :file_type, TD::Types::FileType
    attribute :size, TD::Types::Coercible::Integer
    attribute :count, TD::Types::Coercible::Integer
  end
end
