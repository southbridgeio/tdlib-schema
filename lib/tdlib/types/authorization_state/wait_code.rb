module TD::Types
  # TDLib needs the user's authentication code to authorize.
  # Call checkAuthenticationCode to check the code.
  #
  # @attr code_info [TD::Types::AuthenticationCodeInfo] Information about the authorization code that was sent.
  class AuthorizationState::WaitCode < AuthorizationState
    attribute :code_info, TD::Types::AuthenticationCodeInfo
  end
end
