module TD::Types
  # A detailed statistics about a message.
  #
  # @attr message_interaction_graph [TD::Types::StatisticalGraph] A graph containing number of message views and
  #   shares.
  class MessageStatistics < Base
    attribute :message_interaction_graph, TD::Types::StatisticalGraph
  end
end
