module TD::Types
  # Describes a file added to file download list.
  #
  # @attr file_id [Integer] File identifier.
  # @attr message [TD::Types::Message] The message with the file.
  # @attr add_date [Integer] Point in time (Unix timestamp) when the file was added to the download list.
  # @attr complete_date [Integer] Point in time (Unix timestamp) when the file downloading was completed; 0 if the file
  #   downloading isn't completed.
  # @attr is_paused [Boolean] True, if downloading of the file is paused.
  class FileDownload < Base
    attribute :file_id, TD::Types::Coercible::Integer
    attribute :message, TD::Types::Message
    attribute :add_date, TD::Types::Coercible::Integer
    attribute :complete_date, TD::Types::Coercible::Integer
    attribute :is_paused, TD::Types::Bool
  end
end
