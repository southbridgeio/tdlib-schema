module TD::Types
  # A scope covering a member of a chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr user_id [Integer] User identifier.
  class BotCommandScope::ChatMember < BotCommandScope
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
  end
end
