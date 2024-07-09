module TD::Types
  # Describes the button that opens a private chat with the bot and sends a start message to the bot with the given
  #   parameter.
  #
  # @attr parameter [TD::Types::String] The parameter for the bot start message.
  class InlineQueryResultsButtonType::StartBot < InlineQueryResultsButtonType
    attribute :parameter, TD::Types::String
  end
end
