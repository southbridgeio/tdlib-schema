module TD::Types
  # Represents a button to be shown above inline query results.
  #
  # @attr text [TD::Types::String] The text of the button.
  # @attr type [TD::Types::InlineQueryResultsButtonType] Type of the button.
  class InlineQueryResultsButton < Base
    attribute :text, TD::Types::String
    attribute :type, TD::Types::InlineQueryResultsButtonType
  end
end
