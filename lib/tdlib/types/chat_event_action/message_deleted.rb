module TD::Types
  # A message was deleted.
  #
  # @attr message [TD::Types::Message] Deleted message.
  # @attr can_report_anti_spam_false_positive [Boolean] True, if the message deletion can be reported via
  #   reportSupergroupAntiSpamFalsePositive.
  class ChatEventAction::MessageDeleted < ChatEventAction
    attribute :message, TD::Types::Message
    attribute :can_report_anti_spam_false_positive, TD::Types::Bool
  end
end
