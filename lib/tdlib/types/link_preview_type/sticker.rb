module TD::Types
  # The link is a link to a sticker.
  #
  # @attr sticker [TD::Types::Sticker] The sticker.
  #   It can be an arbitrary WEBP image and can have dimensions bigger than 512.
  class LinkPreviewType::Sticker < LinkPreviewType
    attribute :sticker, TD::Types::Sticker
  end
end
