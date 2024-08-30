module TD::Types
  # Describes a user that had or will have a birthday soon.
  #
  # @attr user_id [Integer] User identifier.
  # @attr birthdate [TD::Types::Birthdate] Birthdate of the user.
  class CloseBirthdayUser < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :birthdate, TD::Types::Birthdate
  end
end
