module TD::Types
  # A user changed the answer to a poll; for bots only.
  #
  # @attr poll_id [Integer] Unique poll identifier.
  # @attr user_id [Integer] The user, who changed the answer to the poll.
  # @attr option_ids [Array<Integer>] 0-based identifiers of answer options, chosen by the user.
  class Update::PollAnswer < Update
    attribute :poll_id, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
    attribute :option_ids, TD::Types::Array.of(TD::Types::Integer)
  end
end
