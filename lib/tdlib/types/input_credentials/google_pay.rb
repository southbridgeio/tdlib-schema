module TD::Types
  # Applies if a user enters new credentials using Google Pay.
  #
  # @attr data [String] JSON-encoded data with the credential identifier.
  class InputCredentials::GooglePay < InputCredentials
    attribute :data, TD::Types::String
  end
end
