module TD::Types
  # A poll in quiz mode, which has exactly one correct answer option and can be answered only once.
  #
  # @attr correct_option_id [Integer] 0-based identifier of the correct answer option; -1 for a yet unanswered poll.
  # @attr explanation [TD::Types::FormattedText, nil] Text that is shown when the user chooses an incorrect answer or
  #   taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll.
  class PollType::Quiz < PollType
    attribute :correct_option_id, TD::Types::Integer
    attribute :explanation, TD::Types::FormattedText.optional.default(nil)
  end
end
