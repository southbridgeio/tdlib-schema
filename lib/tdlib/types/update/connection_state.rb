module TD::Types
  # The connection state has changed.
  # This update must be used only to show a human-readable description of the connection state.
  #
  # @attr state [TD::Types::ConnectionState] The new connection state.
  class Update::ConnectionState < Update
    attribute :state, TD::Types::ConnectionState
  end
end
