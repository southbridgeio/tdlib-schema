module TD::Types
  # The user has been authorized, but needs to enter a 2-step verification password to start using the application.
  # Call checkAuthenticationPassword to provide the password, or requestAuthenticationPasswordRecovery to recover the
  #   password, or deleteAccount to delete the account after a week.
  #
  # @attr password_hint [TD::Types::String, nil] Hint for the password; may be empty.
  # @attr has_recovery_email_address [Boolean] True, if a recovery email address has been set up.
  # @attr has_passport_data [Boolean] True, if some Telegram Passport elements were saved.
  # @attr recovery_email_address_pattern [TD::Types::String, nil] Pattern of the email address to which the recovery
  #   email was sent; empty until a recovery email has been sent.
  class AuthorizationState::WaitPassword < AuthorizationState
    attribute :password_hint, TD::Types::String.optional.default(nil)
    attribute :has_recovery_email_address, TD::Types::Bool
    attribute :has_passport_data, TD::Types::Bool
    attribute :recovery_email_address_pattern, TD::Types::String.optional.default(nil)
  end
end
