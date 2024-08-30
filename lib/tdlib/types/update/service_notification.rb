module TD::Types
  # A service notification from the server was received.
  # Upon receiving this the application must show a popup with the content of the notification.
  #
  # @attr type [TD::Types::String] Notification type.
  #   If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification;
  #   if user presses the second, all local data must be destroyed using Destroy method.
  # @attr content [TD::Types::MessageContent] Notification content.
  class Update::ServiceNotification < Update
    attribute :type, TD::Types::String
    attribute :content, TD::Types::MessageContent
  end
end
