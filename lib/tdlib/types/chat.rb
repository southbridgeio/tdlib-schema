module TD::Types
  # A chat.
  # (Can be a private chat, basic group, supergroup, or secret chat).
  #
  # @attr id [Integer] Chat unique identifier.
  # @attr type [TD::Types::ChatType] Type of the chat.
  # @attr title [TD::Types::String] Chat title.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr accent_color_id [Integer] Identifier of the accent color for message sender name, and backgrounds of chat
  #   photo, reply header, and link preview.
  # @attr background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the reply header and link
  #   preview background for messages sent by the chat; 0 if none.
  # @attr profile_accent_color_id [Integer] Identifier of the profile accent color for the chat's profile; -1 if none.
  # @attr profile_background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the background of
  #   the chat's profile; 0 if none.
  # @attr permissions [TD::Types::ChatPermissions] Actions that non-administrator chat members are allowed to take in
  #   the chat.
  # @attr last_message [TD::Types::Message, nil] Last message in the chat; may be null if none or unknown.
  # @attr positions [Array<TD::Types::ChatPosition>] Positions of the chat in chat lists.
  # @attr chat_lists [Array<TD::Types::ChatList>] Chat lists to which the chat belongs.
  #   A chat can have a non-zero position in a chat list even it doesn't belong to the chat list and have no position
  #   in a chat list even it belongs to the chat list.
  # @attr message_sender_id [TD::Types::MessageSender, nil] Identifier of a user or chat that is selected to send
  #   messages in the chat; may be null if the user can't change message sender.
  # @attr block_list [TD::Types::BlockList, nil] Block list to which the chat is added; may be null if none.
  # @attr has_protected_content [Boolean] True, if chat content can't be saved locally, forwarded, or copied.
  # @attr is_translatable [Boolean] True, if translation of all messages in the chat must be suggested to the user.
  # @attr is_marked_as_unread [Boolean] True, if the chat is marked as unread.
  # @attr view_as_topics [Boolean] True, if the chat is a forum supergroup that must be shown in the "View as topics"
  #   mode, or Saved Messages chat that must be shown in the "View as chats".
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
  # @attr unread_reaction_count [Integer] Number of messages with unread reactions in the chat.
  # @attr notification_settings [TD::Types::ChatNotificationSettings] Notification settings for the chat.
  # @attr available_reactions [TD::Types::ChatAvailableReactions] Types of reaction, available in the chat.
  # @attr message_auto_delete_time [Integer] Current message auto-delete or self-destruct timer setting for the chat,
  #   in seconds; 0 if disabled.
  #   Self-destruct timer in secret chats starts after the message or its content is viewed.
  #   Auto-delete timer in other chats starts from the send date.
  # @attr emoji_status [TD::Types::EmojiStatus, nil] Emoji status to be shown along with chat title; may be null.
  # @attr background [TD::Types::ChatBackground, nil] Background set for the chat; may be null if none.
  # @attr theme_name [TD::Types::String] If non-empty, name of a theme, set for the chat.
  # @attr action_bar [TD::Types::ChatActionBar, nil] Information about actions which must be possible to do through the
  #   chat action bar; may be null if none.
  # @attr business_bot_manage_bar [TD::Types::BusinessBotManageBar, nil] Information about bar for managing a business
  #   bot in the chat; may be null if none.
  # @attr video_chat [TD::Types::VideoChat] Information about video chat of the chat.
  # @attr pending_join_requests [TD::Types::ChatJoinRequestsInfo, nil] Information about pending join requests; may be
  #   null if none.
  # @attr reply_markup_message_id [Integer] Identifier of the message from which reply markup needs to be used; 0 if
  #   there is no default custom reply markup in the chat.
  # @attr draft_message [TD::Types::DraftMessage, nil] A draft of a message in the chat; may be null if none.
  # @attr client_data [TD::Types::String] Application-specific data associated with the chat.
  #   (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the
  #   message database is used.
  class Chat < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :type, TD::Types::ChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :accent_color_id, TD::Types::Coercible::Integer
    attribute :background_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :profile_accent_color_id, TD::Types::Coercible::Integer
    attribute :profile_background_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :permissions, TD::Types::ChatPermissions
    attribute :last_message, TD::Types::Message.optional.default(nil)
    attribute :positions, TD::Types::Array.of(TD::Types::ChatPosition)
    attribute :chat_lists, TD::Types::Array.of(TD::Types::ChatList)
    attribute :message_sender_id, TD::Types::MessageSender.optional.default(nil)
    attribute :block_list, TD::Types::BlockList.optional.default(nil)
    attribute :has_protected_content, TD::Types::Bool
    attribute :is_translatable, TD::Types::Bool
    attribute :is_marked_as_unread, TD::Types::Bool
    attribute :view_as_topics, TD::Types::Bool
    attribute :has_scheduled_messages, TD::Types::Bool
    attribute :can_be_deleted_only_for_self, TD::Types::Bool
    attribute :can_be_deleted_for_all_users, TD::Types::Bool
    attribute :can_be_reported, TD::Types::Bool
    attribute :default_disable_notification, TD::Types::Bool
    attribute :unread_count, TD::Types::Coercible::Integer
    attribute :last_read_inbox_message_id, TD::Types::Coercible::Integer
    attribute :last_read_outbox_message_id, TD::Types::Coercible::Integer
    attribute :unread_mention_count, TD::Types::Coercible::Integer
    attribute :unread_reaction_count, TD::Types::Coercible::Integer
    attribute :notification_settings, TD::Types::ChatNotificationSettings
    attribute :available_reactions, TD::Types::ChatAvailableReactions
    attribute :message_auto_delete_time, TD::Types::Coercible::Integer
    attribute :emoji_status, TD::Types::EmojiStatus.optional.default(nil)
    attribute :background, TD::Types::ChatBackground.optional.default(nil)
    attribute :theme_name, TD::Types::String
    attribute :action_bar, TD::Types::ChatActionBar.optional.default(nil)
    attribute :business_bot_manage_bar, TD::Types::BusinessBotManageBar.optional.default(nil)
    attribute :video_chat, TD::Types::VideoChat
    attribute :pending_join_requests, TD::Types::ChatJoinRequestsInfo.optional.default(nil)
    attribute :reply_markup_message_id, TD::Types::Coercible::Integer
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
    attribute :client_data, TD::Types::String
  end
end
