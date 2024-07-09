module TD::Types
  # Email address can be reset after the given period.
  # Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's
  #   phone number.
  #
  # @attr wait_period [Integer] Time required to wait before the email address can be reset; 0 if the user is
  #   subscribed to Telegram Premium.
  class EmailAddressResetState::Available < EmailAddressResetState
    attribute :wait_period, TD::Types::Coercible::Integer
  end
end
