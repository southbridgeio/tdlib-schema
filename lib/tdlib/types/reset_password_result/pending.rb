module TD::Types
  # The password reset request is pending.
  #
  # @attr pending_reset_date [Integer] Point in time (Unix timestamp) after which the password can be reset immediately
  #   using resetPassword.
  class ResetPasswordResult::Pending < ResetPasswordResult
    attribute :pending_reset_date, TD::Types::Coercible::Integer
  end
end
