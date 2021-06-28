module TD::Types
  # Represents a string JSON value.
  #
  # @attr value [TD::Types::String] The value.
  class JsonValue::String < JsonValue
    attribute :value, TD::Types::String
  end
end
