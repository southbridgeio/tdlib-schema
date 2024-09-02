module TD::Types
  # Describes a paid media to be sent.
  #
  # @attr type [TD::Types::InputPaidMediaType] Type of the media.
  # @attr media [TD::Types::InputFile] Photo or video to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail] Media thumbnail; pass null to skip thumbnail uploading.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the media, if applicable.
  # @attr width [Integer] Media width.
  # @attr height [Integer] Media height.
  class InputPaidMedia < Base
    attribute :type, TD::Types::InputPaidMediaType
    attribute :media, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
  end
end
