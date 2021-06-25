module TD::Types
  # The message was sent by a known user.
  #
  # @attr user_id [Integer] Identifier of the user that sent the message.
  class MessageSender::User < MessageSender
    attribute :user_id, TD::Types::Integer
  end
end
