module TD::Types
  # A straight line to a given point.
  #
  # @attr end_point [TD::Types::Point] The end point of the straight line.
  class VectorPathCommand::Line < VectorPathCommand
    attribute :end_point, TD::Types::Point
  end
end
