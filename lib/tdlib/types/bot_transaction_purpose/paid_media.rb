module TD::Types
  # Paid media were bought.
  #
  # @attr media [Array<TD::Types::PaidMedia>] The bought media if the trancastion wasn't refunded.
  class BotTransactionPurpose::PaidMedia < BotTransactionPurpose
    attribute :media, TD::Types::Array.of(TD::Types::PaidMedia)
  end
end
