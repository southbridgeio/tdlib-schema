module TD::Types
  # The number of Telegram stars owned by the current user has changed.
  #
  # @attr star_count [Integer] The new number of Telegram stars owned.
  class Update::OwnedStarCount < Update
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
