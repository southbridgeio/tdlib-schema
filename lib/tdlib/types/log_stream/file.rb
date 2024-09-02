module TD::Types
  # The log is written to a file.
  #
  # @attr path [TD::Types::String] Path to the file to where the internal TDLib log will be written.
  # @attr max_file_size [Integer] The maximum size of the file to where the internal TDLib log is written before the
  #   file will automatically be rotated, in bytes.
  # @attr redirect_stderr [Boolean] Pass true to additionally redirect stderr to the log file.
  #   Ignored on Windows.
  class LogStream::File < LogStream
    attribute :path, TD::Types::String
    attribute :max_file_size, TD::Types::Coercible::Integer
    attribute :redirect_stderr, TD::Types::Bool
  end
end
