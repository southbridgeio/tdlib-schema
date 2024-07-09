module TD::Types
  # TDLib needs the user's authentication code sent to an email address to authorize.
  # Call checkAuthenticationEmailCode to provide the code.
  #
  # @attr allow_apple_id [Boolean] True, if authorization through Apple ID is allowed.
  # @attr allow_google_id [Boolean] True, if authorization through Google ID is allowed.
  # @attr code_info [TD::Types::EmailAddressAuthenticationCodeInfo] Information about the sent authentication code.
  # @attr email_address_reset_state [TD::Types::EmailAddressResetState, nil] Reset state of the email address; may be
  #   null if the email address can't be reset.
  class AuthorizationState::WaitEmailCode < AuthorizationState
    attribute :allow_apple_id, TD::Types::Bool
    attribute :allow_google_id, TD::Types::Bool
    attribute :code_info, TD::Types::EmailAddressAuthenticationCodeInfo
    attribute :email_address_reset_state, TD::Types::EmailAddressResetState.optional.default(nil)
  end
end
