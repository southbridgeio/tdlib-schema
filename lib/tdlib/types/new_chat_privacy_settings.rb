module TD::Types
  # Contains privacy settings for new chats with non-contacts.
  #
  # @attr allow_new_chats_from_unknown_users [Boolean] True, if non-contacts users are able to write first to the
  #   current user.
  #   Telegram Premium subscribers are able to write first regardless of this setting.
  class NewChatPrivacySettings < Base
    attribute :allow_new_chats_from_unknown_users, TD::Types::Bool
  end
end
