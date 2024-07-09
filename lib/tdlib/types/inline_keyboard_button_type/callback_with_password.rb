module TD::Types
  # A button that asks for the 2-step verification password of the current user and then sends a callback query to a
  #   bot.
  #
  # @attr data [String] Data to be sent to the bot via a callback query.
  class InlineKeyboardButtonType::CallbackWithPassword < InlineKeyboardButtonType
    attribute :data, TD::Types::Coercible::String
  end
end
