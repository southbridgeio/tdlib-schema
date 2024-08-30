module TD::Types
  # Represents a list of Telegram Star subscriptions.
  #
  # @attr star_count [Integer] The amount of owned Telegram Stars.
  # @attr subscriptions [Array<TD::Types::StarSubscription>] List of subbscriptions for Telegram Stars.
  # @attr required_star_count [Integer] The number of Telegram Stars required to buy to extend subscriptions expiring
  #   soon.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class StarSubscriptions < Base
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :subscriptions, TD::Types::Array.of(TD::Types::StarSubscription)
    attribute :required_star_count, TD::Types::Coercible::Integer
    attribute :next_offset, TD::Types::String
  end
end
