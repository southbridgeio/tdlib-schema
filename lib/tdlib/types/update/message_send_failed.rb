module TD::Types
  # A message failed to send.
  # Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be
  #   received instead of this update.
  #
  # @attr message [TD::Types::Message] The failed to send message.
  # @attr old_message_id [Integer] The previous temporary message identifier.
  # @attr error [TD::Types::Error] The cause of the message sending failure.
  class Update::MessageSendFailed < Update
    attribute :message, TD::Types::Message
    attribute :old_message_id, TD::Types::Coercible::Integer
    attribute :error, TD::Types::Error
  end
end
