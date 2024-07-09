module TD::Types
  # An authentication code delivered to a user's email address.
  #
  # @attr code [TD::Types::String] The code.
  class EmailAddressAuthentication::Code < EmailAddressAuthentication
    attribute :code, TD::Types::String
  end
end
