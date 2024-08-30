module TD::Types
  # User paid for a reaction.
  #
  # @attr message_id [Integer] Identifier of the reacted message; can be an identifier of a deleted message.
  class ChannelTransactionPurpose::Reaction < ChannelTransactionPurpose
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
