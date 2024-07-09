module TD::Types
  # Contains information about notification settings for several chats.
  #
  # @attr mute_for [Integer] Time left before notifications will be unmuted, in seconds.
  # @attr sound_id [Integer] Identifier of the notification sound to be played; 0 if sound is disabled.
  # @attr show_preview [Boolean] True, if message content must be displayed in notifications.
  # @attr use_default_mute_stories [Boolean] If true, story notifications are received only for the first 5 chats from
  #   {TD::Types::TopChatCategory::Users} regardless of the value of mute_stories.
  # @attr mute_stories [Boolean] True, if story notifications are disabled.
  # @attr story_sound_id [Integer] Identifier of the notification sound to be played for stories; 0 if sound is
  #   disabled.
  # @attr show_story_sender [Boolean] True, if the sender of stories must be displayed in notifications.
  # @attr disable_pinned_message_notifications [Boolean] True, if notifications for incoming pinned messages will be
  #   created as for an ordinary unread message.
  # @attr disable_mention_notifications [Boolean] True, if notifications for messages with mentions will be created as
  #   for an ordinary unread message.
  class ScopeNotificationSettings < Base
    attribute :mute_for, TD::Types::Coercible::Integer
    attribute :sound_id, TD::Types::Coercible::Integer
    attribute :show_preview, TD::Types::Bool
    attribute :use_default_mute_stories, TD::Types::Bool
    attribute :mute_stories, TD::Types::Bool
    attribute :story_sound_id, TD::Types::Coercible::Integer
    attribute :show_story_sender, TD::Types::Bool
    attribute :disable_pinned_message_notifications, TD::Types::Bool
    attribute :disable_mention_notifications, TD::Types::Bool
  end
end
