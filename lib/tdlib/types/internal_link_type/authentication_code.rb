module TD::Types
  # The link contains an authentication code.
  # Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode.
  #
  # @attr code [TD::Types::String] The authentication code.
  class InternalLinkType::AuthenticationCode < InternalLinkType
    attribute :code, TD::Types::String
  end
end
