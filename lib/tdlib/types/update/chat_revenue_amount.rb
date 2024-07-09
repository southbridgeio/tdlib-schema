module TD::Types
  # The revenue earned from sponsored messages in a chat has changed.
  # If chat revenue screen is opened, then getChatRevenueTransactions may be called to fetch new transactions.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  # @attr revenue_amount [TD::Types::ChatRevenueAmount] New amount of earned revenue.
  class Update::ChatRevenueAmount < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :revenue_amount, TD::Types::ChatRevenueAmount
  end
end
