module TD::Types
  # A link to an anchor on the same web page.
  #
  # @attr text [TD::Types::RichText] The link text.
  # @attr anchor_name [TD::Types::String] The anchor name.
  #   If the name is empty, the link must bring back to top.
  # @attr url [TD::Types::String] An HTTP URL, opening the anchor.
  class RichText::AnchorLink < RichText
    attribute :text, TD::Types::RichText
    attribute :anchor_name, TD::Types::String
    attribute :url, TD::Types::String
  end
end
