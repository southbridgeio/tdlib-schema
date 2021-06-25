module TD::Types
  # A poll was updated; for bots only.
  #
  # @attr poll [TD::Types::Poll] New data about the poll.
  class Update::Poll < Update
    attribute :poll, TD::Types::Poll
  end
end
