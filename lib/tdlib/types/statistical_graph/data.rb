module TD::Types
  # A graph data.
  #
  # @attr json_data [TD::Types::String] Graph data in JSON format.
  # @attr zoom_token [TD::Types::String] If non-empty, a token which can be used to receive a zoomed in graph.
  class StatisticalGraph::Data < StatisticalGraph
    attribute :json_data, TD::Types::String
    attribute :zoom_token, TD::Types::String
  end
end
