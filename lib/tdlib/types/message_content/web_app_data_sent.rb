module TD::Types
  # Data from a Web App has been sent to a bot.
  #
  # @attr button_text [TD::Types::String] Text of the {TD::Types::KeyboardButtonType::WebApp} button, which opened the
  #   Web App.
  class MessageContent::WebAppDataSent < MessageContent
    attribute :button_text, TD::Types::String
  end
end
