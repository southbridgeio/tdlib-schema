module TD::Types
  # A scope covering all administrators of a chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  class BotCommandScope::ChatAdministrators < BotCommandScope
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
