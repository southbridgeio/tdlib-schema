module TD::Types
  # An audio message.
  #
  # @attr audio [TD::Types::InputFile] Audio file to be sent.
  # @attr album_cover_thumbnail [TD::Types::InputThumbnail] Thumbnail of the cover for the album; pass null to skip
  #   thumbnail uploading.
  # @attr duration [Integer] Duration of the audio, in seconds; may be replaced by the server.
  # @attr title [TD::Types::String] Title of the audio; 0-64 characters; may be replaced by the server.
  # @attr performer [TD::Types::String] Performer of the audio; 0-64 characters, may be replaced by the server.
  # @attr caption [TD::Types::FormattedText] Audio caption; pass null to use an empty caption;
  #   0-getOption("message_caption_length_max") characters.
  class InputMessageContent::Audio < InputMessageContent
    attribute :audio, TD::Types::InputFile
    attribute :album_cover_thumbnail, TD::Types::InputThumbnail
    attribute :duration, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :performer, TD::Types::String
    attribute :caption, TD::Types::FormattedText
  end
end
