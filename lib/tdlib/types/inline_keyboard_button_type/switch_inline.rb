module TD::Types
  # A button that forces an inline query to the bot to be inserted in the input field.
  #
  # @attr query [TD::Types::String] Inline query to be sent to the bot.
  # @attr target_chat [TD::Types::TargetChat] Target chat from which to send the inline query.
  class InlineKeyboardButtonType::SwitchInline < InlineKeyboardButtonType
    attribute :query, TD::Types::String
    attribute :target_chat, TD::Types::TargetChat
  end
end
