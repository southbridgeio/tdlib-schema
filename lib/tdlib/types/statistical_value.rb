module TD::Types
  # A value with information about its recent changes.
  #
  # @attr value [Float] The current value.
  # @attr previous_value [Float] The value for the previous day.
  # @attr growth_rate_percentage [Float] The growth rate of the value, as a percentage.
  class StatisticalValue < Base
    attribute :value, TD::Types::Coercible::Float
    attribute :previous_value, TD::Types::Coercible::Float
    attribute :growth_rate_percentage, TD::Types::Coercible::Float
  end
end
