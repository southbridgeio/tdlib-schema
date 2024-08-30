module TD::Types
  # Telegram Stars were gifted to a user.
  #
  # @attr gifter_user_id [Integer] The identifier of a user that gifted Telegram Stars; 0 if the gift was anonymous or
  #   is outgoing.
  # @attr receiver_user_id [Integer] The identifier of a user that received Telegram Stars; 0 if the gift is incoming.
  # @attr currency [TD::Types::String] Currency for the paid amount.
  # @attr amount [Integer] The paid amount, in the smallest units of the currency.
  # @attr cryptocurrency [TD::Types::String, nil] Cryptocurrency used to pay for the gift; may be empty if none.
  # @attr cryptocurrency_amount [Integer] The paid amount, in the smallest units of the cryptocurrency; 0 if none.
  # @attr star_count [Integer] Number of Telegram Stars that were gifted.
  # @attr transaction_id [TD::Types::String] Identifier of the transaction for Telegram Stars purchase; for receiver
  #   only.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the message; may be null if unknown.
  class MessageContent::GiftedStars < MessageContent
    attribute :gifter_user_id, TD::Types::Coercible::Integer
    attribute :receiver_user_id, TD::Types::Coercible::Integer
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :cryptocurrency, TD::Types::String.optional.default(nil)
    attribute :cryptocurrency_amount, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :transaction_id, TD::Types::String
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
