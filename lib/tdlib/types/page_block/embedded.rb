module TD::Types
  # An embedded web page.
  #
  # @attr url [TD::Types::String, nil] Web page URL, if available.
  # @attr html [TD::Types::String] HTML-markup of the embedded page.
  # @attr poster_photo [TD::Types::Photo, nil] Poster photo, if available; may be null.
  # @attr width [Integer] Block width; 0 if unknown.
  # @attr height [Integer] Block height; 0 if unknown.
  # @attr caption [TD::Types::PageBlockCaption] Block caption.
  # @attr is_full_width [Boolean] True, if the block must be full width.
  # @attr allow_scrolling [Boolean] True, if scrolling needs to be allowed.
  class PageBlock::Embedded < PageBlock
    attribute :url, TD::Types::String.optional.default(nil)
    attribute :html, TD::Types::String
    attribute :poster_photo, TD::Types::Photo.optional.default(nil)
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :caption, TD::Types::PageBlockCaption
    attribute :is_full_width, TD::Types::Bool
    attribute :allow_scrolling, TD::Types::Bool
  end
end
