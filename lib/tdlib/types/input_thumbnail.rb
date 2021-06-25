module TD::Types
  # A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in
  #   size.
  #
  # @attr thumbnail [TD::Types::InputFile] Thumbnail file to send.
  #   Sending thumbnails by file_id is currently not supported.
  # @attr width [Integer] Thumbnail width, usually shouldn't exceed 320.
  #   Use 0 if unknown.
  # @attr height [Integer] Thumbnail height, usually shouldn't exceed 320.
  #   Use 0 if unknown.
  class InputThumbnail < Base
    attribute :thumbnail, TD::Types::InputFile
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
  end
end
