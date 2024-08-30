module TD::Types
  # The number of Telegram Stars owned by the current user has changed.
  #
  # @attr star_count [Integer] The new number of Telegram Stars owned.
  class Update::OwnedStarCount < Update
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
