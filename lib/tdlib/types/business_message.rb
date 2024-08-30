module TD::Types
  # Describes a message from a business account as received by a bot.
  #
  # @attr message [TD::Types::Message] The message.
  # @attr reply_to_message [TD::Types::Message, nil] Message that is replied by the message in the same chat; may be
  #   null if none.
  class BusinessMessage < Base
    attribute :message, TD::Types::Message
    attribute :reply_to_message, TD::Types::Message.optional.default(nil)
  end
end
