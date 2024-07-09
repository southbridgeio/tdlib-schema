module TD::Types
  # An invoice from a message of the type messageInvoice or paid media purchase from messagePaidMedia.
  #
  # @attr chat_id [Integer] Chat identifier of the message.
  # @attr message_id [Integer] Message identifier.
  class InputInvoice::Message < InputInvoice
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
