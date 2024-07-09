module TD::Types
  # Contains information about a message created with importMessages.
  #
  # @attr sender_name [TD::Types::String] Name of the original sender.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was originally sent.
  class MessageImportInfo < Base
    attribute :sender_name, TD::Types::String
    attribute :date, TD::Types::Coercible::Integer
  end
end
