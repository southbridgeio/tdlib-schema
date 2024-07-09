module TD::Types
  # Describes a video note.
  # The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.
  #
  # @attr duration [Integer] Duration of the video, in seconds; as defined by the sender.
  # @attr waveform [String, nil] A waveform representation of the video note's audio in 5-bit format; may be empty if
  #   unknown.
  # @attr length [Integer] Video width and height; as defined by the sender.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Video minithumbnail; may be null.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Video thumbnail in JPEG format; as defined by the sender; may be null.
  # @attr speech_recognition_result [TD::Types::SpeechRecognitionResult, nil] Result of speech recognition in the video
  #   note; may be null.
  # @attr video [TD::Types::File] File containing the video.
  class VideoNote < Base
    attribute :duration, TD::Types::Coercible::Integer
    attribute :waveform, TD::Types::Coercible::String.optional.default(nil)
    attribute :length, TD::Types::Coercible::Integer
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :speech_recognition_result, TD::Types::SpeechRecognitionResult.optional.default(nil)
    attribute :video, TD::Types::File
  end
end
