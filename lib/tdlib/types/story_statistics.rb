module TD::Types
  # A detailed statistics about a story.
  #
  # @attr story_interaction_graph [TD::Types::StatisticalGraph] A graph containing number of story views and shares.
  # @attr story_reaction_graph [TD::Types::StatisticalGraph] A graph containing number of story reactions.
  class StoryStatistics < Base
    attribute :story_interaction_graph, TD::Types::StatisticalGraph
    attribute :story_reaction_graph, TD::Types::StatisticalGraph
  end
end
