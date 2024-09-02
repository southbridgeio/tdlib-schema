module TD::Types
  # An authentication token received through Google ID.
  #
  # @attr token [TD::Types::String] The token.
  class EmailAddressAuthentication::GoogleId < EmailAddressAuthentication
    attribute :token, TD::Types::String
  end
end
