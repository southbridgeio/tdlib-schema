module TD::Types
  # Represents a thumbnail.
  #
  # @attr format [TD::Types::ThumbnailFormat] Thumbnail format.
  # @attr width [Integer] Thumbnail width.
  # @attr height [Integer] Thumbnail height.
  # @attr file [TD::Types::File] The thumbnail.
  class Thumbnail < Base
    attribute :format, TD::Types::ThumbnailFormat
    attribute :width, TD::Types::Integer
    attribute :height, TD::Types::Integer
    attribute :file, TD::Types::File
  end
end
