module TD::Types
  # Contains a custom keyboard layout to quickly reply to bots.
  #
  # @attr rows [Array<Array<TD::Types::KeyboardButton>>] A list of rows of bot keyboard buttons.
  # @attr resize_keyboard [Boolean] True, if the application needs to resize the keyboard vertically.
  # @attr one_time [Boolean] True, if the application needs to hide the keyboard after use.
  # @attr is_personal [Boolean] True, if the keyboard must automatically be shown to the current user.
  #   For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of
  #   a reply.
  # @attr input_field_placeholder [TD::Types::String] If non-empty, the placeholder to be shown in the input field when
  #   the keyboard is active; 0-64 characters.
  class ReplyMarkup::ShowKeyboard < ReplyMarkup
    attribute :rows, TD::Types::Array.of(TD::Types::Array.of(TD::Types::KeyboardButton))
    attribute :resize_keyboard, TD::Types::Bool
    attribute :one_time, TD::Types::Bool
    attribute :is_personal, TD::Types::Bool
    attribute :input_field_placeholder, TD::Types::String
  end
end
