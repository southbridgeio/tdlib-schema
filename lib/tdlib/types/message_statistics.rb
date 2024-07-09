module TD::Types
  # A detailed statistics about a message.
  #
  # @attr message_interaction_graph [TD::Types::StatisticalGraph] A graph containing number of message views and
  #   shares.
  # @attr message_reaction_graph [TD::Types::StatisticalGraph] A graph containing number of message reactions.
  class MessageStatistics < Base
    attribute :message_interaction_graph, TD::Types::StatisticalGraph
    attribute :message_reaction_graph, TD::Types::StatisticalGraph
  end
end
