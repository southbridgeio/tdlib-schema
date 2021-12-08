module TD::Types
  # A document message (general file).
  #
  # @attr document [TD::Types::InputFile] Document to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail] Document thumbnail; pass null to skip thumbnail uploading.
  # @attr disable_content_type_detection [Boolean] If true, automatic file type detection will be disabled and the
  #   document will be always sent as file.
  #   Always true for files sent to secret chats.
  # @attr caption [TD::Types::FormattedText] Document caption; pass null to use an empty caption;
  #   0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Document < InputMessageContent
    attribute :document, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :disable_content_type_detection, TD::Types::Bool
    attribute :caption, TD::Types::FormattedText
  end
end
