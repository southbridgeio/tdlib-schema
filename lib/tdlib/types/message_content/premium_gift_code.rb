module TD::Types
  # A Telegram Premium gift code was created for the user.
  #
  # @attr creator_id [TD::Types::MessageSender, nil] Identifier of a chat or a user that created the gift code; may be
  #   null if unknown.
  # @attr is_from_giveaway [Boolean] True, if the gift code was created for a giveaway.
  # @attr is_unclaimed [Boolean] True, if the winner for the corresponding Telegram Premium subscription wasn't chosen.
  # @attr currency [TD::Types::String] Currency for the paid amount; empty if unknown.
  # @attr amount [Integer] The paid amount, in the smallest units of the currency; 0 if unknown.
  # @attr cryptocurrency [TD::Types::String, nil] Cryptocurrency used to pay for the gift; may be empty if none or
  #   unknown.
  # @attr cryptocurrency_amount [Integer] The paid amount, in the smallest units of the cryptocurrency; 0 if unknown.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the message; may be null if unknown.
  # @attr code [TD::Types::String] The gift code.
  class MessageContent::PremiumGiftCode < MessageContent
    attribute :creator_id, TD::Types::MessageSender.optional.default(nil)
    attribute :is_from_giveaway, TD::Types::Bool
    attribute :is_unclaimed, TD::Types::Bool
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :cryptocurrency, TD::Types::String.optional.default(nil)
    attribute :cryptocurrency_amount, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
    attribute :code, TD::Types::String
  end
end
