module TD::Types
  # The current user shared a chat, which was requested by the bot.
  #
  # @attr chat [TD::Types::SharedChat] The shared chat.
  # @attr button_id [Integer] Identifier of the keyboard button with the request.
  class MessageContent::ChatShared < MessageContent
    attribute :chat, TD::Types::SharedChat
    attribute :button_id, TD::Types::Coercible::Integer
  end
end
