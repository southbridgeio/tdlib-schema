module TD::Types
  # The graph data to be asynchronously loaded through getStatisticalGraph.
  #
  # @attr token [TD::Types::String] The token to use for data loading.
  class StatisticalGraph::Async < StatisticalGraph
    attribute :token, TD::Types::String
  end
end
