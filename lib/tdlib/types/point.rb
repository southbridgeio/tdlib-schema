module TD::Types
  # A point on a Cartesian plane.
  #
  # @attr x [Float] The point's first coordinate.
  # @attr y [Float] The point's second coordinate.
  class Point < Base
    attribute :x, TD::Types::Coercible::Float
    attribute :y, TD::Types::Coercible::Float
  end
end
