module TD::Types
  # A detailed statistics about a channel chat.
  #
  # @attr period [TD::Types::DateRange] A period to which the statistics applies.
  # @attr member_count [TD::Types::StatisticalValue] Number of members in the chat.
  # @attr mean_view_count [TD::Types::StatisticalValue] Mean number of times the recently sent messages was viewed.
  # @attr mean_share_count [TD::Types::StatisticalValue] Mean number of times the recently sent messages was shared.
  # @attr enabled_notifications_percentage [Float] A percentage of users with enabled notifications for the chat.
  # @attr member_count_graph [TD::Types::StatisticalGraph] A graph containing number of members in the chat.
  # @attr join_graph [TD::Types::StatisticalGraph] A graph containing number of members joined and left the chat.
  # @attr mute_graph [TD::Types::StatisticalGraph] A graph containing number of members muted and unmuted the chat.
  # @attr view_count_by_hour_graph [TD::Types::StatisticalGraph] A graph containing number of message views in a given
  #   hour in the last two weeks.
  # @attr view_count_by_source_graph [TD::Types::StatisticalGraph] A graph containing number of message views per
  #   source.
  # @attr join_by_source_graph [TD::Types::StatisticalGraph] A graph containing number of new member joins per source.
  # @attr language_graph [TD::Types::StatisticalGraph] A graph containing number of users viewed chat messages per
  #   language.
  # @attr message_interaction_graph [TD::Types::StatisticalGraph] A graph containing number of chat message views and
  #   shares.
  # @attr instant_view_interaction_graph [TD::Types::StatisticalGraph] A graph containing number of views of associated
  #   with the chat instant views.
  # @attr recent_message_interactions [Array<TD::Types::ChatStatisticsMessageInteractionInfo>] Detailed statistics
  #   about number of views and shares of recently sent messages.
  class ChatStatistics::Channel < ChatStatistics
    attribute :period, TD::Types::DateRange
    attribute :member_count, TD::Types::StatisticalValue
    attribute :mean_view_count, TD::Types::StatisticalValue
    attribute :mean_share_count, TD::Types::StatisticalValue
    attribute :enabled_notifications_percentage, TD::Types::Coercible::Float
    attribute :member_count_graph, TD::Types::StatisticalGraph
    attribute :join_graph, TD::Types::StatisticalGraph
    attribute :mute_graph, TD::Types::StatisticalGraph
    attribute :view_count_by_hour_graph, TD::Types::StatisticalGraph
    attribute :view_count_by_source_graph, TD::Types::StatisticalGraph
    attribute :join_by_source_graph, TD::Types::StatisticalGraph
    attribute :language_graph, TD::Types::StatisticalGraph
    attribute :message_interaction_graph, TD::Types::StatisticalGraph
    attribute :instant_view_interaction_graph, TD::Types::StatisticalGraph
    attribute :recent_message_interactions, TD::Types::Array.of(TD::Types::ChatStatisticsMessageInteractionInfo)
  end
end
