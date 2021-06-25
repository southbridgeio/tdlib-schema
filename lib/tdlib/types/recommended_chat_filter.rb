module TD::Types
  # Describes a recommended chat filter.
  #
  # @attr filter [TD::Types::ChatFilter] The chat filter.
  # @attr description [String] Chat filter description.
  class RecommendedChatFilter < Base
    attribute :filter, TD::Types::ChatFilter
    attribute :description, TD::Types::String
  end
end
