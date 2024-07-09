module TD::Types
  # A business connection has changed; for bots only.
  #
  # @attr connection [TD::Types::BusinessConnection] New data about the connection.
  class Update::BusinessConnection < Update
    attribute :connection, TD::Types::BusinessConnection
  end
end
