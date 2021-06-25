module TD::Types
  # An error message to be shown to the user instead of the graph.
  #
  # @attr error_message [String] The error message.
  class StatisticalGraph::Error < StatisticalGraph
    attribute :error_message, TD::Types::String
  end
end
