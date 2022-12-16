module TD::Types
  # Represents the results of the inline query.
  # Use sendInlineQueryResultMessage to send the result of the query.
  #
  # @attr inline_query_id [Integer] Unique identifier of the inline query.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, there are no more results.
  # @attr results [Array<TD::Types::InlineQueryResult>] Results of the query.
  # @attr switch_pm_text [TD::Types::String] If non-empty, this text must be shown on the button, which opens a private
  #   chat with the bot and sends the bot a start message with the switch_pm_parameter.
  # @attr switch_pm_parameter [TD::Types::String] Parameter for the bot start message.
  class InlineQueryResults < Base
    attribute :inline_query_id, TD::Types::Coercible::Integer
    attribute :next_offset, TD::Types::String
    attribute :results, TD::Types::Array.of(TD::Types::InlineQueryResult)
    attribute :switch_pm_text, TD::Types::String
    attribute :switch_pm_parameter, TD::Types::String
  end
end
