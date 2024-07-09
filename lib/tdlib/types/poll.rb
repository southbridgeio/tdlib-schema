module TD::Types
  # Describes a poll.
  #
  # @attr id [Integer] Unique poll identifier.
  # @attr question [TD::Types::FormattedText] Poll question; 1-300 characters.
  #   Only custom emoji entities are allowed.
  # @attr options [Array<TD::Types::PollOption>] List of poll answer options.
  # @attr total_voter_count [Integer] Total number of voters, participating in the poll.
  # @attr recent_voter_ids [Array<TD::Types::MessageSender>] Identifiers of recent voters, if the poll is
  #   non-anonymous.
  # @attr is_anonymous [Boolean] True, if the poll is anonymous.
  # @attr type [TD::Types::PollType] Type of the poll.
  # @attr open_period [Integer] Amount of time the poll will be active after creation, in seconds.
  # @attr close_date [Integer] Point in time (Unix timestamp) when the poll will automatically be closed.
  # @attr is_closed [Boolean] True, if the poll is closed.
  class Poll < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :question, TD::Types::FormattedText
    attribute :options, TD::Types::Array.of(TD::Types::PollOption)
    attribute :total_voter_count, TD::Types::Coercible::Integer
    attribute :recent_voter_ids, TD::Types::Array.of(TD::Types::MessageSender)
    attribute :is_anonymous, TD::Types::Bool
    attribute :type, TD::Types::PollType
    attribute :open_period, TD::Types::Coercible::Integer
    attribute :close_date, TD::Types::Coercible::Integer
    attribute :is_closed, TD::Types::Bool
  end
end
