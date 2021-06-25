module TD::Types
  # Represents a command supported by a bot.
  #
  # @attr command [String] Text of the bot command.
  # @attr description [String] Description of the bot command.
  class BotCommand < Base
    attribute :command, TD::Types::String
    attribute :description, TD::Types::String
  end
end
