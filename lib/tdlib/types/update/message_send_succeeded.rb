module TD::Types
  # A message has been successfully sent.
  #
  # @attr message [TD::Types::Message] The sent message.
  #   Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
  # @attr old_message_id [Integer] The previous temporary message identifier.
  class Update::MessageSendSucceeded < Update
    attribute :message, TD::Types::Message
    attribute :old_message_id, TD::Types::Coercible::Integer
  end
end
