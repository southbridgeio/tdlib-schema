module TD::Types
  # The transaction is a transaction with a channel chat.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  # @attr purpose [TD::Types::ChannelTransactionPurpose] Purpose of the transaction.
  class StarTransactionPartner::Channel < StarTransactionPartner
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :purpose, TD::Types::ChannelTransactionPurpose
  end
end
