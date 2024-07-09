module TD::Types
  # A sticker message.
  #
  # @attr sticker [TD::Types::InputFile] Sticker to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail] Sticker thumbnail; pass null to skip thumbnail uploading.
  # @attr width [Integer] Sticker width.
  # @attr height [Integer] Sticker height.
  # @attr emoji [TD::Types::String] Emoji used to choose the sticker.
  class InputMessageContent::Sticker < InputMessageContent
    attribute :sticker, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :emoji, TD::Types::String
  end
end
