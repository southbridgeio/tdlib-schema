module TD::Types
  # The password reset request was declined.
  #
  # @attr retry_date [Integer] Point in time (Unix timestamp) when the password reset can be retried.
  class ResetPasswordResult::Declined < ResetPasswordResult
    attribute :retry_date, TD::Types::Coercible::Integer
  end
end
