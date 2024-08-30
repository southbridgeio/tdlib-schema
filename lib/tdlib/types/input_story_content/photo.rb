module TD::Types
  # A photo story.
  #
  # @attr photo [TD::Types::InputFile] Photo to send.
  #   The photo must be at most 10 MB in size.
  #   The photo size must be 1080x1920.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the photo, if applicable.
  class InputStoryContent::Photo < InputStoryContent
    attribute :photo, TD::Types::InputFile
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
