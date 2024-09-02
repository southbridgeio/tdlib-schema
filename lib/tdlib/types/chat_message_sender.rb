module TD::Types
  # Represents a message sender, which can be used to send messages in a chat.
  #
  # @attr sender [TD::Types::MessageSender] The message sender.
  # @attr needs_premium [Boolean] True, if Telegram Premium is needed to use the message sender.
  class ChatMessageSender < Base
    attribute :sender, TD::Types::MessageSender
    attribute :needs_premium, TD::Types::Bool
  end
end
