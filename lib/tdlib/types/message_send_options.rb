module TD::Types
  # Options to be used when a message is sent.
  #
  # @attr disable_notification [Boolean] Pass true to disable notification for the message.
  # @attr from_background [Boolean] Pass true if the message is sent from the background.
  # @attr scheduling_state [TD::Types::MessageSchedulingState] Message scheduling state; pass null to send message
  #   immediately.
  #   Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled.
  class MessageSendOptions < Base
    attribute :disable_notification, TD::Types::Bool
    attribute :from_background, TD::Types::Bool
    attribute :scheduling_state, TD::Types::MessageSchedulingState
  end
end
