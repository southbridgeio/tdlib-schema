module TD::Types
  # Notification settings for reactions were updated.
  #
  # @attr notification_settings [TD::Types::ReactionNotificationSettings] The new notification settings.
  class Update::ReactionNotificationSettings < Update
    attribute :notification_settings, TD::Types::ReactionNotificationSettings
  end
end
