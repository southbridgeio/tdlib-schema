module TD::Types
  # Paid media were bought.
  #
  # @attr message_id [Integer] Identifier of the corresponding message with paid media; can be an identifier of a
  #   deleted message.
  # @attr media [Array<TD::Types::PaidMedia>] The bought media if the trancastion wasn't refunded.
  class ChannelTransactionPurpose::PaidMedia < ChannelTransactionPurpose
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :media, TD::Types::Array.of(TD::Types::PaidMedia)
  end
end
