module TD::Types
  # The link is a link to the Telegram Star purchase section of the application.
  #
  # @attr star_count [Integer] The number of Telegram Stars that must be owned by the user.
  # @attr purpose [TD::Types::String] Purpose of Telegram Star purchase.
  #   Arbitrary string specified by the server, for example, "subs" if the Telegram Stars are required to extend
  #   channel subscriptions.
  class InternalLinkType::BuyStars < InternalLinkType
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :purpose, TD::Types::String
  end
end
