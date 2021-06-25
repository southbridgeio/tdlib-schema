module TD::Types
  # A detailed statistics about a supergroup chat.
  #
  # @attr period [TD::Types::DateRange] A period to which the statistics applies.
  # @attr member_count [TD::Types::StatisticalValue] Number of members in the chat.
  # @attr message_count [TD::Types::StatisticalValue] Number of messages sent to the chat.
  # @attr viewer_count [TD::Types::StatisticalValue] Number of users who viewed messages in the chat.
  # @attr sender_count [TD::Types::StatisticalValue] Number of users who sent messages to the chat.
  # @attr member_count_graph [TD::Types::StatisticalGraph] A graph containing number of members in the chat.
  # @attr join_graph [TD::Types::StatisticalGraph] A graph containing number of members joined and left the chat.
  # @attr join_by_source_graph [TD::Types::StatisticalGraph] A graph containing number of new member joins per source.
  # @attr language_graph [TD::Types::StatisticalGraph] A graph containing distribution of active users per language.
  # @attr message_content_graph [TD::Types::StatisticalGraph] A graph containing distribution of sent messages by
  #   content type.
  # @attr action_graph [TD::Types::StatisticalGraph] A graph containing number of different actions in the chat.
  # @attr day_graph [TD::Types::StatisticalGraph] A graph containing distribution of message views per hour.
  # @attr week_graph [TD::Types::StatisticalGraph] A graph containing distribution of message views per day of week.
  # @attr top_senders [Array<TD::Types::ChatStatisticsMessageSenderInfo>] List of users sent most messages in the last
  #   week.
  # @attr top_administrators [Array<TD::Types::ChatStatisticsAdministratorActionsInfo>] List of most active
  #   administrators in the last week.
  # @attr top_inviters [Array<TD::Types::ChatStatisticsInviterInfo>] List of most active inviters of new members in the
  #   last week.
  class ChatStatistics::Supergroup < ChatStatistics
    attribute :period, TD::Types::DateRange
    attribute :member_count, TD::Types::StatisticalValue
    attribute :message_count, TD::Types::StatisticalValue
    attribute :viewer_count, TD::Types::StatisticalValue
    attribute :sender_count, TD::Types::StatisticalValue
    attribute :member_count_graph, TD::Types::StatisticalGraph
    attribute :join_graph, TD::Types::StatisticalGraph
    attribute :join_by_source_graph, TD::Types::StatisticalGraph
    attribute :language_graph, TD::Types::StatisticalGraph
    attribute :message_content_graph, TD::Types::StatisticalGraph
    attribute :action_graph, TD::Types::StatisticalGraph
    attribute :day_graph, TD::Types::StatisticalGraph
    attribute :week_graph, TD::Types::StatisticalGraph
    attribute :top_senders, TD::Types::Array.of(TD::Types::ChatStatisticsMessageSenderInfo)
    attribute :top_administrators, TD::Types::Array.of(TD::Types::ChatStatisticsAdministratorActionsInfo)
    attribute :top_inviters, TD::Types::Array.of(TD::Types::ChatStatisticsInviterInfo)
  end
end
