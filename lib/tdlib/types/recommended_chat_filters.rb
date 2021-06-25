module TD::Types
  # Contains a list of recommended chat filters.
  #
  # @attr chat_filters [Array<TD::Types::RecommendedChatFilter>] List of recommended chat filters.
  class RecommendedChatFilters < Base
    attribute :chat_filters, TD::Types::Array.of(TD::Types::RecommendedChatFilter)
  end
end
