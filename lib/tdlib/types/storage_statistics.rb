module TD::Types
  # Contains the exact storage usage statistics split by chats and file type.
  #
  # @attr size [Integer] Total size of files, in bytes.
  # @attr count [Integer] Total number of files.
  # @attr by_chat [Array<TD::Types::StorageStatisticsByChat>] Statistics split by chats.
  class StorageStatistics < Base
    attribute :size, TD::Types::Coercible::Integer
    attribute :count, TD::Types::Coercible::Integer
    attribute :by_chat, TD::Types::Array.of(TD::Types::StorageStatisticsByChat)
  end
end
