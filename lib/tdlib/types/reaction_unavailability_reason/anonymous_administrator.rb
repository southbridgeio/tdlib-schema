module TD::Types
  # The user is an anonymous administrator in the supergroup, but isn't a creator of it, so they can't vote on behalf
  #   of the supergroup.
  class ReactionUnavailabilityReason::AnonymousAdministrator < ReactionUnavailabilityReason
  end
end
