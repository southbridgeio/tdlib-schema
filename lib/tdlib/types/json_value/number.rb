module TD::Types
  # Represents a numeric JSON value.
  #
  # @attr value [Float] The value.
  class JsonValue::Number < JsonValue
    attribute :value, TD::Types::Coercible::Float
  end
end
