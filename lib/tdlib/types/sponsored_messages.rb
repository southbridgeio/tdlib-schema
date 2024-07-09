module TD::Types
  # Contains a list of sponsored messages.
  #
  # @attr messages [Array<TD::Types::SponsoredMessage>] List of sponsored messages.
  # @attr messages_between [Integer] The minimum number of messages between shown sponsored messages, or 0 if only one
  #   sponsored message must be shown after all ordinary messages.
  class SponsoredMessages < Base
    attribute :messages, TD::Types::Array.of(TD::Types::SponsoredMessage)
    attribute :messages_between, TD::Types::Coercible::Integer
  end
end
