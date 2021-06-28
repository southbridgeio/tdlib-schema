module TD::Types
  # Contains the call identifier.
  #
  # @attr id [Integer] Call identifier.
  class CallId < Base
    attribute :id, TD::Types::Coercible::Integer
  end
end
