module TD::Types
  # Contains a public forward as a message.
  #
  # @attr message [TD::Types::Message] Information about the message.
  class PublicForward::Message < PublicForward
    attribute :message, TD::Types::Message
  end
end
