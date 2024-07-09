module TD::Types
  # A new background was set in the chat.
  #
  # @attr old_background_message_id [Integer] Identifier of the message with a previously set same background; 0 if
  #   none.
  #   Can be an identifier of a deleted message.
  # @attr background [TD::Types::ChatBackground] The new background.
  # @attr only_for_self [Boolean] True, if the background was set only for self.
  class MessageContent::ChatSetBackground < MessageContent
    attribute :old_background_message_id, TD::Types::Coercible::Integer
    attribute :background, TD::Types::ChatBackground
    attribute :only_for_self, TD::Types::Bool
  end
end
