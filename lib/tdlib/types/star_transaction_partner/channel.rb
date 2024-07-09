module TD::Types
  # The transaction is a transaction with a channel chat.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  # @attr paid_media_message_id [Integer] Identifier of the corresponding message with paid media; can be an identifier
  #   of a deleted message.
  # @attr media [Array<TD::Types::PaidMedia>] Information about the bought media.
  class StarTransactionPartner::Channel < StarTransactionPartner
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :paid_media_message_id, TD::Types::Coercible::Integer
    attribute :media, TD::Types::Array.of(TD::Types::PaidMedia)
  end
end
