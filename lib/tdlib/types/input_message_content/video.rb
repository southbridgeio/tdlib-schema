module TD::Types
  # A video message.
  #
  # @attr video [TD::Types::InputFile] Video to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail] Video thumbnail; pass null to skip thumbnail uploading.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the video, if applicable.
  # @attr duration [Integer] Duration of the video, in seconds.
  # @attr width [Integer] Video width.
  # @attr height [Integer] Video height.
  # @attr supports_streaming [Boolean] True, if the video is supposed to be streamed.
  # @attr caption [TD::Types::FormattedText] Video caption; pass null to use an empty caption;
  #   0-getOption("message_caption_length_max") characters.
  # @attr show_caption_above_media [Boolean] True, if the caption must be shown above the video; otherwise, the caption
  #   must be shown below the video; not supported in secret chats.
  # @attr self_destruct_type [TD::Types::MessageSelfDestructType] Video self-destruct type; pass null if none; private
  #   chats only.
  # @attr has_spoiler [Boolean] True, if the video preview must be covered by a spoiler animation; not supported in
  #   secret chats.
  class InputMessageContent::Video < InputMessageContent
    attribute :video, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :duration, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :supports_streaming, TD::Types::Bool
    attribute :caption, TD::Types::FormattedText
    attribute :show_caption_above_media, TD::Types::Bool
    attribute :self_destruct_type, TD::Types::MessageSelfDestructType
    attribute :has_spoiler, TD::Types::Bool
  end
end
