module TD::Types
  # Information about a bank card.
  #
  # @attr title [String] Title of the bank card description.
  # @attr actions [Array<TD::Types::BankCardActionOpenUrl>] Actions that can be done with the bank card number.
  class BankCardInfo < Base
    attribute :title, TD::Types::String
    attribute :actions, TD::Types::Array.of(TD::Types::BankCardActionOpenUrl)
  end
end
