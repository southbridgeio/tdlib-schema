module TD::Types
  # A button that forces an inline query to the bot to be inserted in the input field.
  #
  # @attr query [TD::Types::String] Inline query to be sent to the bot.
  # @attr in_current_chat [Boolean] True, if the inline query must be sent from the current chat.
  class InlineKeyboardButtonType::SwitchInline < InlineKeyboardButtonType
    attribute :query, TD::Types::String
    attribute :in_current_chat, TD::Types::Bool
  end
end
