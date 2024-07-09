module TD::Types
  # Contains information about a business chat link.
  #
  # @attr chat_id [Integer] Identifier of the private chat that created the link.
  # @attr text [TD::Types::FormattedText] Message draft text that must be added to the input field.
  class BusinessChatLinkInfo < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :text, TD::Types::FormattedText
  end
end
