module TD::Types
  # Email address reset has already been requested.
  # Call resetAuthenticationEmailAddress to check whether immediate reset is possible.
  #
  # @attr reset_in [Integer] Left time before the email address will be reset, in seconds.
  #   {TD::Types::Update::AuthorizationState} is not sent when this field changes.
  class EmailAddressResetState::Pending < EmailAddressResetState
    attribute :reset_in, TD::Types::Coercible::Integer
  end
end
