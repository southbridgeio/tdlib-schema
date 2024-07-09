module TD::Types
  # New message was received through a push notification.
  #
  # @attr message_id [Integer] The message identifier.
  #   The message will not be available in the chat history, but the identifier can be used in viewMessages, or as a
  #   message to be replied in the same chat.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the sender of the message.
  #   Corresponding user or chat may be inaccessible.
  # @attr sender_name [TD::Types::String] Name of the sender.
  # @attr is_outgoing [Boolean] True, if the message is outgoing.
  # @attr content [TD::Types::PushMessageContent] Push message content.
  class NotificationType::NewPushMessage < NotificationType
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :sender_id, TD::Types::MessageSender
    attribute :sender_name, TD::Types::String
    attribute :is_outgoing, TD::Types::Bool
    attribute :content, TD::Types::PushMessageContent
  end
end
