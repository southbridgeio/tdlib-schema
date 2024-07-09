module TD::Types
  # Describes a business chat link to create or edit.
  #
  # @attr text [TD::Types::FormattedText] Message draft text that will be added to the input field.
  # @attr title [TD::Types::String] Link title.
  class InputBusinessChatLink < Base
    attribute :text, TD::Types::FormattedText
    attribute :title, TD::Types::String
  end
end
