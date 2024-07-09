module TD::Types
  # Instructs application to remove the keyboard once this message has been received.
  # This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0
  #   will be sent.
  #
  # @attr is_personal [Boolean] True, if the keyboard is removed only for the mentioned users or the target user of a
  #   reply.
  class ReplyMarkup::RemoveKeyboard < ReplyMarkup
    attribute :is_personal, TD::Types::Bool
  end
end
