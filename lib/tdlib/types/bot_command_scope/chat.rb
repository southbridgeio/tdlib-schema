module TD::Types
  # A scope covering all members of a chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  class BotCommandScope::Chat < BotCommandScope
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
