module TD::Types
  # The has_protected_content setting of a channel was toggled.
  #
  # @attr has_protected_content [Boolean] New value of has_protected_content.
  class ChatEventAction::HasProtectedContentToggled < ChatEventAction
    attribute :has_protected_content, TD::Types::Bool
  end
end
