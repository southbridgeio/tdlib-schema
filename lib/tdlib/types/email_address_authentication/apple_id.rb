module TD::Types
  # An authentication token received through Apple ID.
  #
  # @attr token [TD::Types::String] The token.
  class EmailAddressAuthentication::AppleId < EmailAddressAuthentication
    attribute :token, TD::Types::String
  end
end
