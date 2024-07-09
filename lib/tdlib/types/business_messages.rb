module TD::Types
  # Contains a list of messages from a business account as received by a bot.
  #
  # @attr messages [Array<TD::Types::BusinessMessage>] List of business messages.
  class BusinessMessages < Base
    attribute :messages, TD::Types::Array.of(TD::Types::BusinessMessage)
  end
end
