module TD::Types
  # Animated variant of a chat photo in MPEG4 format.
  #
  # @attr length [Integer] Animation width and height.
  # @attr file [TD::Types::File] Information about the animation file.
  # @attr main_frame_timestamp [Float] Timestamp of the frame, used as a static chat photo.
  class AnimatedChatPhoto < Base
    attribute :length, TD::Types::Integer
    attribute :file, TD::Types::File
    attribute :main_frame_timestamp, TD::Types::Float
  end
end
