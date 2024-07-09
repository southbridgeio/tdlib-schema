module TD::Types
  # A message with a poll.
  # Polls can't be sent to secret chats.
  # Polls can be sent only to a private chat with a bot.
  #
  # @attr question [TD::Types::FormattedText] Poll question; 1-255 characters (up to 300 characters for bots).
  #   Only custom emoji entities are allowed to be added and only by Premium users.
  # @attr options [Array<TD::Types::FormattedText>] List of poll answer options, 2-10 strings 1-100 characters each.
  #   Only custom emoji entities are allowed to be added and only by Premium users.
  # @attr is_anonymous [Boolean] True, if the poll voters are anonymous.
  #   Non-anonymous polls can't be sent or forwarded to channels.
  # @attr type [TD::Types::PollType] Type of the poll.
  # @attr open_period [Integer] Amount of time the poll will be active after creation, in seconds; for bots only.
  # @attr close_date [Integer] Point in time (Unix timestamp) when the poll will automatically be closed; for bots
  #   only.
  # @attr is_closed [Boolean] True, if the poll needs to be sent already closed; for bots only.
  class InputMessageContent::Poll < InputMessageContent
    attribute :question, TD::Types::FormattedText
    attribute :options, TD::Types::Array.of(TD::Types::FormattedText)
    attribute :is_anonymous, TD::Types::Bool
    attribute :type, TD::Types::PollType
    attribute :open_period, TD::Types::Coercible::Integer
    attribute :close_date, TD::Types::Coercible::Integer
    attribute :is_closed, TD::Types::Bool
  end
end
