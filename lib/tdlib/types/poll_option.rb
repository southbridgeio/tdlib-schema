module TD::Types
  # Describes one answer option of a poll.
  #
  # @attr text [TD::Types::FormattedText] Option text; 1-100 characters.
  #   Only custom emoji entities are allowed.
  # @attr voter_count [Integer] Number of voters for this option, available only for closed or voted polls.
  # @attr vote_percentage [Integer] The percentage of votes for this option; 0-100.
  # @attr is_chosen [Boolean] True, if the option was chosen by the user.
  # @attr is_being_chosen [Boolean] True, if the option is being chosen by a pending setPollAnswer request.
  class PollOption < Base
    attribute :text, TD::Types::FormattedText
    attribute :voter_count, TD::Types::Coercible::Integer
    attribute :vote_percentage, TD::Types::Coercible::Integer
    attribute :is_chosen, TD::Types::Bool
    attribute :is_being_chosen, TD::Types::Bool
  end
end
