module TD::Types
  # An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 1280 and be at
  #   most 2MB in size.
  #
  # @attr animation [TD::Types::InputFile] Animation to be set as profile photo.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are allowed.
  # @attr main_frame_timestamp [Float] Timestamp of the frame, which will be used as static chat photo.
  class InputChatPhoto::Animation < InputChatPhoto
    attribute :animation, TD::Types::InputFile
    attribute :main_frame_timestamp, TD::Types::Coercible::Float
  end
end
