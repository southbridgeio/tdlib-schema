module TD::Types
  # Describes an image in JPEG format.
  #
  # @attr type [TD::Types::String] Image type (see https://core.telegram.org/constructor/photoSize).
  # @attr photo [TD::Types::File] Information about the image file.
  # @attr width [Integer] Image width.
  # @attr height [Integer] Image height.
  # @attr progressive_sizes [Array<Integer>] Sizes of progressive JPEG file prefixes, which can be used to
  #   preliminarily show the image; in bytes.
  class PhotoSize < Base
    attribute :type, TD::Types::String
    attribute :photo, TD::Types::File
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :progressive_sizes, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
