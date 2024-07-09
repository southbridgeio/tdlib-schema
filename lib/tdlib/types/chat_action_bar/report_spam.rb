module TD::Types
  # The chat can be reported as spam using the method reportChat with the reason reportReasonSpam.
  # If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be
  #   shown.
  #
  # @attr can_unarchive [Boolean] If true, the chat was automatically archived and can be moved back to the main chat
  #   list using addChatToList simultaneously with setting chat notification settings to default using
  #   setChatNotificationSettings.
  class ChatActionBar::ReportSpam < ChatActionBar
    attribute :can_unarchive, TD::Types::Bool
  end
end
