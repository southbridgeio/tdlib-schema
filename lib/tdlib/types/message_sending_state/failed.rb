module TD::Types
  # The message failed to be sent.
  #
  # @attr error [TD::Types::Error] The cause of the message sending failure.
  # @attr can_retry [Boolean] True, if the message can be re-sent.
  # @attr need_another_sender [Boolean] True, if the message can be re-sent only on behalf of a different sender.
  # @attr need_another_reply_quote [Boolean] True, if the message can be re-sent only if another quote is chosen in the
  #   message that is replied by the given message.
  # @attr need_drop_reply [Boolean] True, if the message can be re-sent only if the message to be replied is removed.
  #   This will be done automatically by resendMessages.
  # @attr retry_after [Float] Time left before the message can be re-sent, in seconds.
  #   No update is sent when this field changes.
  class MessageSendingState::Failed < MessageSendingState
    attribute :error, TD::Types::Error
    attribute :can_retry, TD::Types::Bool
    attribute :need_another_sender, TD::Types::Bool
    attribute :need_another_reply_quote, TD::Types::Bool
    attribute :need_drop_reply, TD::Types::Bool
    attribute :retry_after, TD::Types::Coercible::Float
  end
end
