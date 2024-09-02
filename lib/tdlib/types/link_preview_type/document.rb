module TD::Types
  # The link is a link to a general file.
  #
  # @attr document [TD::Types::Document] The document description.
  # @attr author [TD::Types::String] Author of the document.
  class LinkPreviewType::Document < LinkPreviewType
    attribute :document, TD::Types::Document
    attribute :author, TD::Types::String
  end
end
