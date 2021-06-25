module TD::Types
  # A reference to a richTexts object on the same web page.
  #
  # @attr text [TD::Types::RichText] The text.
  # @attr anchor_name [String] The name of a {TD::Types::RichText::Anchor} object, which is the first element of the
  #   target {TD::Types::RichText::s} object.
  # @attr url [String] An HTTP URL, opening the reference.
  class RichText::Reference < RichText
    attribute :text, TD::Types::RichText
    attribute :anchor_name, TD::Types::String
    attribute :url, TD::Types::String
  end
end
