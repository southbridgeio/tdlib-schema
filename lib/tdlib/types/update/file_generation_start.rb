module TD::Types
  # The file generation process needs to be started by the application.
  #
  # @attr generation_id [Integer] Unique identifier for the generation process.
  # @attr original_path [TD::Types::String, nil] The path to a file from which a new file is generated; may be empty.
  # @attr destination_path [TD::Types::String] The path to a file that must be created and where the new file is
  #   generated.
  # @attr conversion [TD::Types::String] String specifying the conversion applied to the original file.
  #   If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the
  #   application.
  class Update::FileGenerationStart < Update
    attribute :generation_id, TD::Types::Coercible::Integer
    attribute :original_path, TD::Types::String.optional.default(nil)
    attribute :destination_path, TD::Types::String
    attribute :conversion, TD::Types::String
  end
end
