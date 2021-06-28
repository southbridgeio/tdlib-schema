module TD::Types
  # Represents an integer option.
  #
  # @attr value [Integer] The value of the option.
  class OptionValue::Integer < OptionValue
    attribute :value, TD::Types::Coercible::Integer
  end
end
