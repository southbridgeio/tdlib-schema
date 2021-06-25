module TD::Types
  # A cubic Bézier curve to a given point.
  #
  # @attr start_control_point [TD::Types::Point] The start control point of the curve.
  # @attr end_control_point [TD::Types::Point] The end control point of the curve.
  # @attr end_point [TD::Types::Point] The end point of the curve.
  class VectorPathCommand::CubicBezierCurve < VectorPathCommand
    attribute :start_control_point, TD::Types::Point
    attribute :end_control_point, TD::Types::Point
    attribute :end_point, TD::Types::Point
  end
end
