module TD::Types
  # The link is a link to a game.
  # Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a
  #   chat to send the game, and then call sendMessage with inputMessageGame.
  #
  # @attr bot_username [TD::Types::String] Username of the bot that owns the game.
  # @attr game_short_name [TD::Types::String] Short name of the game.
  class InternalLinkType::Game < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :game_short_name, TD::Types::String
  end
end
