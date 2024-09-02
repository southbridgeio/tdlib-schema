module TD::Types
  # The transaction is a gift of Telegram Stars from another user.
  #
  # @attr user_id [Integer] Identifier of the user; 0 if the gift was anonymous.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the transaction information; may be null if
  #   unknown.
  class StarTransactionPartner::User < StarTransactionPartner
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
