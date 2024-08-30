module TD::Types
  # The link is a link to a background.
  # Link preview title and description are available only for filled backgrounds.
  #
  # @attr document [TD::Types::Document, nil] Document with the background; may be null for filled backgrounds.
  # @attr background_type [TD::Types::BackgroundType, nil] Type of the background; may be null if unknown.
  class LinkPreviewType::Background < LinkPreviewType
    attribute :document, TD::Types::Document.optional.default(nil)
    attribute :background_type, TD::Types::BackgroundType.optional.default(nil)
  end
end
