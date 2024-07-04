module TD::Types
  # Describes an audio file.
  # Audio is usually in MP3 or M4A format.
  #
  # @attr duration [Integer] Duration of the audio, in seconds; as defined by the sender.
  # @attr title [TD::Types::String] Title of the audio; as defined by the sender.
  # @attr performer [TD::Types::String] Performer of the audio; as defined by the sender.
  # @attr file_name [TD::Types::String] Original name of the file; as defined by the sender.
  # @attr mime_type [TD::Types::String] The MIME type of the file; as defined by the sender.
  # @attr album_cover_minithumbnail [TD::Types::Minithumbnail, nil] The minithumbnail of the album cover; may be null.
  # @attr album_cover_thumbnail [TD::Types::Thumbnail, nil] The thumbnail of the album cover in JPEG format; as defined
  #   by the sender.
  #   The full size thumbnail is supposed to be extracted from the downloaded file; may be null.
  # @attr audio [TD::Types::File] File containing the audio.
  class Audio < Base
    attribute :duration, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :performer, TD::Types::String
    attribute :file_name, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :album_cover_minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :album_cover_thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :audio, TD::Types::File
  end
end
