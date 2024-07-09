module TD::Types
  # Contains information about a collectible item and its last purchase.
  #
  # @attr purchase_date [Integer] Point in time (Unix timestamp) when the item was purchased.
  # @attr currency [TD::Types::String] Currency for the paid amount.
  # @attr amount [Integer] The paid amount, in the smallest units of the currency.
  # @attr cryptocurrency [TD::Types::String] Cryptocurrency used to pay for the item.
  # @attr cryptocurrency_amount [Integer] The paid amount, in the smallest units of the cryptocurrency.
  # @attr url [TD::Types::String] Individual URL for the item on https://fragment.com.
  class CollectibleItemInfo < Base
    attribute :purchase_date, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :cryptocurrency, TD::Types::String
    attribute :cryptocurrency_amount, TD::Types::Coercible::Integer
    attribute :url, TD::Types::String
  end
end
