module TD::Types
  # The transaction is a transaction with a bot.
  #
  # @attr user_id [Integer] Identifier of the bot.
  # @attr purpose [TD::Types::BotTransactionPurpose] Purpose of the transaction.
  class StarTransactionPartner::Bot < StarTransactionPartner
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :purpose, TD::Types::BotTransactionPurpose
  end
end
