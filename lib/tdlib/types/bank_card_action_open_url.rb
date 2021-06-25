module TD::Types
  # Describes an action associated with a bank card number.
  #
  # @attr text [String] Action text.
  # @attr url [String] The URL to be opened.
  class BankCardActionOpenUrl < Base
    attribute :text, TD::Types::String
    attribute :url, TD::Types::String
  end
end
