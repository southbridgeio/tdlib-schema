module TD::Types
  # The Telegram Star revenue earned by a bot or a chat has changed.
  # If Telegram Star transaction screen of the chat is opened, then getStarTransactions may be called to fetch new
  #   transactions.
  #
  # @attr owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram Stars.
  # @attr status [TD::Types::StarRevenueStatus] New Telegram Star revenue status.
  class Update::StarRevenueStatus < Update
    attribute :owner_id, TD::Types::MessageSender
    attribute :status, TD::Types::StarRevenueStatus
  end
end
