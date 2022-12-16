module TD::Types
  # Contains a list of sponsored messages.
  #
  # @attr messages [Array<TD::Types::SponsoredMessage>] List of sponsored messages.
  class SponsoredMessages < Base
    attribute :messages, TD::Types::Array.of(TD::Types::SponsoredMessage)
  end
end
