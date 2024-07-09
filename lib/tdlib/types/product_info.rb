module TD::Types
  # Contains information about a product that can be paid with invoice.
  #
  # @attr title [TD::Types::String] Product title.
  # @attr description [TD::Types::FormattedText] Product description.
  # @attr photo [TD::Types::Photo, nil] Product photo; may be null.
  class ProductInfo < Base
    attribute :title, TD::Types::String
    attribute :description, TD::Types::FormattedText
    attribute :photo, TD::Types::Photo.optional.default(nil)
  end
end
