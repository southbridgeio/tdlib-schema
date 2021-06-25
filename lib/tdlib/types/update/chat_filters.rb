module TD::Types
  # The list of chat filters or a chat filter has changed.
  #
  # @attr chat_filters [Array<TD::Types::ChatFilterInfo>] The new list of chat filters.
  class Update::ChatFilters < Update
    attribute :chat_filters, TD::Types::Array.of(TD::Types::ChatFilterInfo)
  end
end
