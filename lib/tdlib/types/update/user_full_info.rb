module TD::Types
  # Some data in userFullInfo has been changed.
  #
  # @attr user_id [Integer] User identifier.
  # @attr user_full_info [TD::Types::UserFullInfo] New full information about the user.
  class Update::UserFullInfo < Update
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :user_full_info, TD::Types::UserFullInfo
  end
end
