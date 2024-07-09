module TD::Types
  # Contains approximate storage usage statistics, excluding files of unknown file type.
  #
  # @attr files_size [Integer] Approximate total size of files, in bytes.
  # @attr file_count [Integer] Approximate number of files.
  # @attr database_size [Integer] Size of the database.
  # @attr language_pack_database_size [Integer] Size of the language pack database.
  # @attr log_size [Integer] Size of the TDLib internal log.
  class StorageStatisticsFast < Base
    attribute :files_size, TD::Types::Coercible::Integer
    attribute :file_count, TD::Types::Coercible::Integer
    attribute :database_size, TD::Types::Coercible::Integer
    attribute :language_pack_database_size, TD::Types::Coercible::Integer
    attribute :log_size, TD::Types::Coercible::Integer
  end
end
