module TD::Types
  # Describes a collectible item that can be purchased at https://fragment.com.
  class CollectibleItemType < Base
    %w[
      username
      phone_number
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/collectible_item_type/#{type}"
    end
  end
end
