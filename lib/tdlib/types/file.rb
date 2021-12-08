module TD::Types
  # Represents a file.
  #
  # @attr id [Integer] Unique file identifier.
  # @attr size [Integer] File size, in bytes; 0 if unknown.
  # @attr expected_size [Integer] Approximate file size in bytes in case the exact file size is unknown.
  #   Can be used to show download/upload progress.
  # @attr local [TD::Types::LocalFile] Information about the local copy of the file.
  # @attr remote [TD::Types::RemoteFile] Information about the remote copy of the file.
  class File < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :size, TD::Types::Coercible::Integer
    attribute :expected_size, TD::Types::Coercible::Integer
    attribute :local, TD::Types::LocalFile
    attribute :remote, TD::Types::RemoteFile
  end
end
