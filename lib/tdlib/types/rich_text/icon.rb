module TD::Types
  # A small image inside the text.
  #
  # @attr document [TD::Types::Document] The image represented as a document.
  #   The image can be in GIF, JPEG or PNG format.
  # @attr width [Integer] Width of a bounding box in which the image must be shown; 0 if unknown.
  # @attr height [Integer] Height of a bounding box in which the image must be shown; 0 if unknown.
  class RichText::Icon < RichText
    attribute :document, TD::Types::Document
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
  end
end
