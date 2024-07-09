module TD::Types
  # A video story.
  #
  # @attr video [TD::Types::InputFile] Video to be sent.
  #   The video size must be 720x1280.
  #   The video must be streamable and stored in MPEG4 format, after encoding with x265 codec and key frames added each
  #   second.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the video, if applicable.
  # @attr duration [Float] Precise duration of the video, in seconds; 0-60.
  # @attr is_animation [Boolean] True, if the video has no sound.
  class InputStoryContent::Video < InputStoryContent
    attribute :video, TD::Types::InputFile
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :duration, TD::Types::Coercible::Float
    attribute :is_animation, TD::Types::Bool
  end
end
