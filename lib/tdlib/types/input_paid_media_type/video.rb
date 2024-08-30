module TD::Types
  # The media is a video.
  #
  # @attr duration [Integer] Duration of the video, in seconds.
  # @attr supports_streaming [Boolean] True, if the video is supposed to be streamed.
  class InputPaidMediaType::Video < InputPaidMediaType
    attribute :duration, TD::Types::Coercible::Integer
    attribute :supports_streaming, TD::Types::Bool
  end
end
