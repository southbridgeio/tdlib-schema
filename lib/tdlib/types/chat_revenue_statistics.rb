module TD::Types
  # A detailed statistics about revenue earned from sponsored messages in a chat.
  #
  # @attr revenue_by_hour_graph [TD::Types::StatisticalGraph] A graph containing amount of revenue in a given hour.
  # @attr revenue_graph [TD::Types::StatisticalGraph] A graph containing amount of revenue.
  # @attr revenue_amount [TD::Types::ChatRevenueAmount] Amount of earned revenue.
  # @attr usd_rate [Float] Current conversion rate of the cryptocurrency in which revenue is calculated to USD.
  class ChatRevenueStatistics < Base
    attribute :revenue_by_hour_graph, TD::Types::StatisticalGraph
    attribute :revenue_graph, TD::Types::StatisticalGraph
    attribute :revenue_amount, TD::Types::ChatRevenueAmount
    attribute :usd_rate, TD::Types::Coercible::Float
  end
end
