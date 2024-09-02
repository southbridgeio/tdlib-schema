module TD::Types
  # A detailed statistics about Telegram Stars earned by a bot or a chat.
  #
  # @attr revenue_by_day_graph [TD::Types::StatisticalGraph] A graph containing amount of revenue in a given day.
  # @attr status [TD::Types::StarRevenueStatus] Telegram Star revenue status.
  # @attr usd_rate [Float] Current conversion rate of a Telegram Star to USD.
  class StarRevenueStatistics < Base
    attribute :revenue_by_day_graph, TD::Types::StatisticalGraph
    attribute :status, TD::Types::StarRevenueStatus
    attribute :usd_rate, TD::Types::Coercible::Float
  end
end
