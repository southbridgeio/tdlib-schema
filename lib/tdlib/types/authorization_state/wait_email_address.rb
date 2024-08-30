module TD::Types
  # TDLib needs the user's email address to authorize.
  # Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with
  #   Apple ID/Google ID token if allowed.
  #
  # @attr allow_apple_id [Boolean] True, if authorization through Apple ID is allowed.
  # @attr allow_google_id [Boolean] True, if authorization through Google ID is allowed.
  class AuthorizationState::WaitEmailAddress < AuthorizationState
    attribute :allow_apple_id, TD::Types::Bool
    attribute :allow_google_id, TD::Types::Bool
  end
end
