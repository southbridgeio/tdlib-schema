module TD::Types
  # A photo message.
  #
  # @attr photo [TD::Types::InputFile] Photo to send.
  # @attr thumbnail [TD::Types::InputThumbnail] Photo thumbnail to be sent; pass null to skip thumbnail uploading.
  #   The thumbnail is sent to the other party only in secret chats.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the photo, if applicable.
  # @attr width [Integer] Photo width.
  # @attr height [Integer] Photo height.
  # @attr caption [TD::Types::FormattedText] Photo caption; pass null to use an empty caption;
  #   0-GetOption("message_caption_length_max") characters.
  # @attr ttl [Integer] Photo TTL (Time To Live), in seconds (0-60).
  #   A non-zero TTL can be specified only in private chats.
  class InputMessageContent::Photo < InputMessageContent
    attribute :photo, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :caption, TD::Types::FormattedText
    attribute :ttl, TD::Types::Coercible::Integer
  end
end
