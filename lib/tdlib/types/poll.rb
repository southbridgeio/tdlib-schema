module TD::Types
  # Describes a poll.
  #
  # @attr id [Integer] Unique poll identifier.
  # @attr question [String] Poll question; 1-300 characters.
  # @attr options [Array<TD::Types::PollOption>] List of poll answer options.
  # @attr total_voter_count [Integer] Total number of voters, participating in the poll.
  # @attr recent_voter_user_ids [Array<Integer>] User identifiers of recent voters, if the poll is non-anonymous.
  # @attr is_anonymous [Boolean] True, if the poll is anonymous.
  # @attr type [TD::Types::PollType] Type of the poll.
  # @attr open_period [Integer] Amount of time the poll will be active after creation, in seconds.
  # @attr close_date [Integer] Point in time (Unix timestamp) when the poll will be automatically closed.
  # @attr is_closed [Boolean] True, if the poll is closed.
  class Poll < Base
    attribute :id, TD::Types::Integer
    attribute :question, TD::Types::String
    attribute :options, TD::Types::Array.of(TD::Types::PollOption)
    attribute :total_voter_count, TD::Types::Integer
    attribute :recent_voter_user_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :is_anonymous, TD::Types::Bool
    attribute :type, TD::Types::PollType
    attribute :open_period, TD::Types::Integer
    attribute :close_date, TD::Types::Integer
    attribute :is_closed, TD::Types::Bool
  end
end
