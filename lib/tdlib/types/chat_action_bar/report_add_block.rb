module TD::Types
  # The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be
  #   blocked using the method toggleMessageSenderIsBlocked, or the other user can be added to the contact list using the
  #   method addContact.
  #
  # @attr can_unarchive [Boolean] If true, the chat was automatically archived and can be moved back to the main chat
  #   list using addChatToList simultaneously with setting chat notification settings to default using
  #   setChatNotificationSettings.
  # @attr distance [Integer] If non-negative, the current user was found by the peer through searchChatsNearby and this
  #   is the distance between the users.
  class ChatActionBar::ReportAddBlock < ChatActionBar
    attribute :can_unarchive, TD::Types::Bool
    attribute :distance, TD::Types::Coercible::Integer
  end
end
