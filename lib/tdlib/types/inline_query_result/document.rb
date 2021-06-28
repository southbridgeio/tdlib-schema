module TD::Types
  # Represents a document.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr document [TD::Types::Document] Document.
  # @attr title [TD::Types::String] Document title.
  # @attr description [TD::Types::String] Document description.
  class InlineQueryResult::Document < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :document, TD::Types::Document
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
  end
end
