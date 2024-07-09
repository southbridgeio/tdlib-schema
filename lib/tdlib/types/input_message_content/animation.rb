module TD::Types
  # An animation message (GIF-style)..
  #
  # @attr animation [TD::Types::InputFile] Animation file to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail] Animation thumbnail; pass null to skip thumbnail uploading.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the animation, if
  #   applicable.
  # @attr duration [Integer] Duration of the animation, in seconds.
  # @attr width [Integer] Width of the animation; may be replaced by the server.
  # @attr height [Integer] Height of the animation; may be replaced by the server.
  # @attr caption [TD::Types::FormattedText] Animation caption; pass null to use an empty caption;
  #   0-getOption("message_caption_length_max") characters.
  # @attr show_caption_above_media [Boolean] True, if the caption must be shown above the animation; otherwise, the
  #   caption must be shown below the animation; not supported in secret chats.
  # @attr has_spoiler [Boolean] True, if the animation preview must be covered by a spoiler animation; not supported in
  #   secret chats.
  class InputMessageContent::Animation < InputMessageContent
    attribute :animation, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :duration, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :caption, TD::Types::FormattedText
    attribute :show_caption_above_media, TD::Types::Bool
    attribute :has_spoiler, TD::Types::Bool
  end
end
