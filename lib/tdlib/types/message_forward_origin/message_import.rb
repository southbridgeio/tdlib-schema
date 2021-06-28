module TD::Types
  # The message was imported from an exported message history.
  #
  # @attr sender_name [TD::Types::String] Name of the sender.
  class MessageForwardOrigin::MessageImport < MessageForwardOrigin
    attribute :sender_name, TD::Types::String
  end
end
