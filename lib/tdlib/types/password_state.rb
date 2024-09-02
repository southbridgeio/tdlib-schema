module TD::Types
  # Represents the current state of 2-step verification.
  #
  # @attr has_password [Boolean] True, if a 2-step verification password is set.
  # @attr password_hint [TD::Types::String, nil] Hint for the password; may be empty.
  # @attr has_recovery_email_address [Boolean] True, if a recovery email is set.
  # @attr has_passport_data [Boolean] True, if some Telegram Passport elements were saved.
  # @attr recovery_email_address_code_info [TD::Types::EmailAddressAuthenticationCodeInfo, nil] Information about the
  #   recovery email address to which the confirmation email was sent; may be null.
  # @attr login_email_address_pattern [TD::Types::String] Pattern of the email address set up for logging in.
  # @attr pending_reset_date [Integer] If not 0, point in time (Unix timestamp) after which the 2-step verification
  #   password can be reset immediately using resetPassword.
  class PasswordState < Base
    attribute :has_password, TD::Types::Bool
    attribute :password_hint, TD::Types::String.optional.default(nil)
    attribute :has_recovery_email_address, TD::Types::Bool
    attribute :has_passport_data, TD::Types::Bool
    attribute :recovery_email_address_code_info, TD::Types::EmailAddressAuthenticationCodeInfo.optional.default(nil)
    attribute :login_email_address_pattern, TD::Types::String
    attribute :pending_reset_date, TD::Types::Coercible::Integer
  end
end
