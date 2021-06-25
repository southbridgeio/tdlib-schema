module TD::Types
  # A chat.
  # (Can be a private chat, basic group, supergroup, or secret chat).
  #
  # @attr id [Integer] Chat unique identifier.
  # @attr type [TD::Types::ChatType] Type of the chat.
  # @attr title [String] Chat title.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr permissions [TD::Types::ChatPermissions] Actions that non-administrator chat members are allowed to take in
  #   the chat.
  # @attr last_message [TD::Types::Message, nil] Last message in the chat; may be null.
  # @attr positions [Array<TD::Types::ChatPosition>] Positions of the chat in chat lists.
  # @attr is_marked_as_unread [Boolean] True, if the chat is marked as unread.
  # @attr is_blocked [Boolean] True, if the chat is blocked by the current user and private messages from the chat
  #   can't be received.
  # @attr has_scheduled_messages [Boolean] True, if the chat has scheduled messages.
  # @attr can_be_deleted_only_for_self [Boolean] True, if the chat messages can be deleted only for the current user
  #   while other users will continue to see the messages.
  # @attr can_be_deleted_for_all_users [Boolean] True, if the chat messages can be deleted for all users.
  # @attr can_be_reported [Boolean] True, if the chat can be reported to Telegram moderators through reportChat or
  #   reportChatPhoto.
  # @attr default_disable_notification [Boolean] Default value of the disable_notification parameter, used when a
  #   message is sent to the chat.
  # @attr unread_count [Integer] Number of unread messages in the chat.
  # @attr last_read_inbox_message_id [Integer] Identifier of the last read incoming message.
  # @attr last_read_outbox_message_id [Integer] Identifier of the last read outgoing message.
  # @attr unread_mention_count [Integer] Number of unread messages with a mention/reply in the chat.
  # @attr notification_settings [TD::Types::ChatNotificationSettings] Notification settings for this chat.
  # @attr message_ttl_setting [Integer] Current message Time To Live setting (self-destruct timer) for the chat; 0 if
  #   not defined.
  #   TTL is counted from the time message or its content is viewed in secret chats and from the send date in other
  #   chats.
  # @attr action_bar [TD::Types::ChatActionBar, nil] Describes actions which should be possible to do through a chat
  #   action bar; may be null.
  # @attr voice_chat [TD::Types::VoiceChat] Contains information about voice chat of the chat.
  # @attr reply_markup_message_id [Integer] Identifier of the message from which reply markup needs to be used; 0 if
  #   there is no default custom reply markup in the chat.
  # @attr draft_message [TD::Types::DraftMessage, nil] A draft of a message in the chat; may be null.
  # @attr client_data [String] Contains application-specific data associated with the chat.
  #   (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the
  #   message database is used.
  class Chat < Base
    attribute :id, TD::Types::Integer
    attribute :type, TD::Types::ChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :permissions, TD::Types::ChatPermissions
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :positions, TD::Types::Array.of(TD::Types::ChatPosition)
    attribute :is_marked_as_unread, TD::Types::Bool
    attribute :is_blocked, TD::Types::Bool
    attribute :has_scheduled_messages, TD::Types::Bool
    attribute :can_be_deleted_only_for_self, TD::Types::Bool
    attribute :can_be_deleted_for_all_users, TD::Types::Bool
    attribute :can_be_reported, TD::Types::Bool
    attribute :default_disable_notification, TD::Types::Bool
    attribute :unread_count, TD::Types::Integer
    attribute :last_read_inbox_message_id, TD::Types::Integer
    attribute :last_read_outbox_message_id, TD::Types::Integer
    attribute :unread_mention_count, TD::Types::Integer
    attribute :notification_settings, TD::Types::ChatNotificationSettings
    attribute :message_ttl_setting, TD::Types::Integer
    attribute :action_bar, TD::Types::ChatActionBar.optional.default(nil)
    attribute :voice_chat, TD::Types::VoiceChat
    attribute :reply_markup_message_id, TD::Types::Integer
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
    attribute :client_data, TD::Types::String
  end
end
