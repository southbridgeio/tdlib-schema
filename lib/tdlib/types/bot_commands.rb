module TD::Types
  # Contains a list of bot commands.
  #
  # @attr bot_user_id [Integer] Bot's user identifier.
  # @attr commands [Array<TD::Types::BotCommand>] List of bot commands.
  class BotCommands < Base
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :commands, TD::Types::Array.of(TD::Types::BotCommand)
  end
end
