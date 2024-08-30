module TD::Types
  # The link is a link to an audio.
  #
  # @attr url [TD::Types::String, nil] URL of the audio; may be empty if none.
  # @attr mime_type [TD::Types::String] MIME type of the audio file.
  # @attr audio [TD::Types::Audio, nil] The audio description; may be null if unknown.
  # @attr duration [Integer] Duration of the audio, in seconds; 0 if unknown.
  # @attr author [TD::Types::String] Author of the audio.
  class LinkPreviewType::Audio < LinkPreviewType
    attribute :url, TD::Types::String.optional.default(nil)
    attribute :mime_type, TD::Types::String
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :duration, TD::Types::Coercible::Integer
    attribute :author, TD::Types::String
  end
end
