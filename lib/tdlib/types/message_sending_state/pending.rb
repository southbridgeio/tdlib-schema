module TD::Types
  # The message is being sent now, but has not yet been delivered to the server.
  #
  # @attr sending_id [Integer] Non-persistent message sending identifier, specified by the application.
  class MessageSendingState::Pending < MessageSendingState
    attribute :sending_id, TD::Types::Coercible::Integer
  end
end
