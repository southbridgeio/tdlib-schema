module TD::Types
  # Data from a Web App has been received; for bots only.
  #
  # @attr button_text [TD::Types::String] Text of the {TD::Types::KeyboardButtonType::WebApp} button, which opened the
  #   Web App.
  # @attr data [TD::Types::String] The data.
  class MessageContent::WebAppDataReceived < MessageContent
    attribute :button_text, TD::Types::String
    attribute :data, TD::Types::String
  end
end
