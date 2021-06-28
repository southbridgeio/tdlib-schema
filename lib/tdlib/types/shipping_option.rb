module TD::Types
  # One shipping option.
  #
  # @attr id [TD::Types::String] Shipping option identifier.
  # @attr title [TD::Types::String] Option title.
  # @attr price_parts [Array<TD::Types::LabeledPricePart>] A list of objects used to calculate the total shipping
  #   costs.
  class ShippingOption < Base
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :price_parts, TD::Types::Array.of(TD::Types::LabeledPricePart)
  end
end
