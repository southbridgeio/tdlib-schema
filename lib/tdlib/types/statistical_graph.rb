module TD::Types
  # Describes a statistical graph.
  class StatisticalGraph < Base
    %w[
      data
      async
      error
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/statistical_graph/#{type}"
    end
  end
end
