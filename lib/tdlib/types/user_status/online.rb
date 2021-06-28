module TD::Types
  # The user is online.
  #
  # @attr expires [Integer] Point in time (Unix timestamp) when the user's online status will expire.
  class UserStatus::Online < UserStatus
    attribute :expires, TD::Types::Coercible::Integer
  end
end
