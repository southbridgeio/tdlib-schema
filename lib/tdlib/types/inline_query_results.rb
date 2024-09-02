module TD::Types
  # Represents the results of the inline query.
  # Use sendInlineQueryResultMessage to send the result of the query.
  #
  # @attr inline_query_id [Integer] Unique identifier of the inline query.
  # @attr button [TD::Types::InlineQueryResultsButton, nil] Button to be shown above inline query results; may be null.
  # @attr results [Array<TD::Types::InlineQueryResult>] Results of the query.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class InlineQueryResults < Base
    attribute :inline_query_id, TD::Types::Coercible::Integer
    attribute :button, TD::Types::InlineQueryResultsButton.optional.default(nil)
    attribute :results, TD::Types::Array.of(TD::Types::InlineQueryResult)
    attribute :next_offset, TD::Types::String
  end
end
