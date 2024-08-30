module TD::Types
  # Contains size of downloaded prefix of a file.
  #
  # @attr size [Integer] The prefix size, in bytes.
  class FileDownloadedPrefixSize < Base
    attribute :size, TD::Types::Coercible::Integer
  end
end
