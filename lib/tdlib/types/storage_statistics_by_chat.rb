module TD::Types
  # Contains the storage usage statistics for a specific chat.
  #
  # @attr chat_id [Integer] Chat identifier; 0 if none.
  # @attr size [Integer] Total size of the files in the chat, in bytes.
  # @attr count [Integer] Total number of files in the chat.
  # @attr by_file_type [Array<TD::Types::StorageStatisticsByFileType>] Statistics split by file types.
  class StorageStatisticsByChat < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :size, TD::Types::Coercible::Integer
    attribute :count, TD::Types::Coercible::Integer
    attribute :by_file_type, TD::Types::Array.of(TD::Types::StorageStatisticsByFileType)
  end
end
