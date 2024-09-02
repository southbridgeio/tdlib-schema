module TD::Types
  # Represents a birthdate of a user.
  #
  # @attr day [Integer] Day of the month; 1-31.
  # @attr month [Integer] Month of the year; 1-12.
  # @attr year [Integer] Birth year; 0 if unknown.
  class Birthdate < Base
    attribute :day, TD::Types::Coercible::Integer
    attribute :month, TD::Types::Coercible::Integer
    attribute :year, TD::Types::Coercible::Integer
  end
end
