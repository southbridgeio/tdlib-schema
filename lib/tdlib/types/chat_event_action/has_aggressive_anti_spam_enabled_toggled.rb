module TD::Types
  # The has_aggressive_anti_spam_enabled setting of a supergroup was toggled.
  #
  # @attr has_aggressive_anti_spam_enabled [Boolean] New value of has_aggressive_anti_spam_enabled.
  class ChatEventAction::HasAggressiveAntiSpamEnabledToggled < ChatEventAction
    attribute :has_aggressive_anti_spam_enabled, TD::Types::Bool
  end
end
