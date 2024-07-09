module TD::Types
  # Contains information about a message in a specific position.
  #
  # @attr position [Integer] 0-based message position in the full list of suitable messages.
  # @attr message_id [Integer] Message identifier.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was sent.
  class MessagePosition < Base
    attribute :position, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
  end
end
