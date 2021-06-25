module TD::Types
  # Represents a vector path command.
  class VectorPathCommand < Base
    %w[
      line
      cubic_bezier_curve
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/vector_path_command/#{type}"
    end
  end
end
