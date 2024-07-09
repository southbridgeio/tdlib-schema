module TD::Types
  # Suggests the user to set a 2-step verification password to be able to log in again.
  #
  # @attr authorization_delay [Integer] The number of days to pass between consecutive authorizations if the user
  #   declines to set password; if 0, then the user is advised to set the password for security reasons.
  class SuggestedAction::SetPassword < SuggestedAction
    attribute :authorization_delay, TD::Types::Coercible::Integer
  end
end
