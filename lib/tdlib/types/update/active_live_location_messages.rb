module TD::Types
  # The list of messages with active live location that need to be updated by the application has changed.
  # The list is persistent across application restarts only if the message database is used.
  #
  # @attr messages [Array<TD::Types::Message>] The list of messages with active live locations.
  class Update::ActiveLiveLocationMessages < Update
    attribute :messages, TD::Types::Array.of(TD::Types::Message)
  end
end
