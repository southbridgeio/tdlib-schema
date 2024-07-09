module TD::Types
  # The Telegram star revenue earned by a bot or a chat has changed.
  # If star transactions screen of the chat is opened, then getStarTransactions may be called to fetch new
  #   transactions.
  #
  # @attr owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram stars.
  # @attr status [TD::Types::StarRevenueStatus] New Telegram star revenue status.
  class Update::StarRevenueStatus < Update
    attribute :owner_id, TD::Types::MessageSender
    attribute :status, TD::Types::StarRevenueStatus
  end
end
