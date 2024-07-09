module TD::Types
  # New message was received.
  #
  # @attr message [TD::Types::Message] The message.
  # @attr show_preview [Boolean] True, if message content must be displayed in notifications.
  class NotificationType::NewMessage < NotificationType
    attribute :message, TD::Types::Message
    attribute :show_preview, TD::Types::Bool
  end
end
