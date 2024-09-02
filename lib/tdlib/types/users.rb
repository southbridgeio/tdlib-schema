module TD::Types
  # Represents a list of users.
  #
  # @attr total_count [Integer] Approximate total number of users found.
  # @attr user_ids [Array<Integer>] A list of user identifiers.
  class Users < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
