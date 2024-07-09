module TD::Types
  # Contains information about a Telegram Premium gift code.
  #
  # @attr creator_id [TD::Types::MessageSender, nil] Identifier of a chat or a user that created the gift code; may be
  #   null if unknown.
  #   If null and the code is from {TD::Types::MessageContent::PremiumGiftCode} message, then creator_id from the
  #   message can be used.
  # @attr creation_date [Integer] Point in time (Unix timestamp) when the code was created.
  # @attr is_from_giveaway [Boolean] True, if the gift code was created for a giveaway.
  # @attr giveaway_message_id [Integer] Identifier of the corresponding giveaway message in the creator_id chat; can be
  #   0 or an identifier of a deleted message.
  # @attr month_count [Integer] Number of months the Telegram Premium subscription will be active after code
  #   activation.
  # @attr user_id [Integer] Identifier of a user for which the code was created; 0 if none.
  # @attr use_date [Integer] Point in time (Unix timestamp) when the code was activated; 0 if none.
  class PremiumGiftCodeInfo < Base
    attribute :creator_id, TD::Types::MessageSender.optional.default(nil)
    attribute :creation_date, TD::Types::Coercible::Integer
    attribute :is_from_giveaway, TD::Types::Bool
    attribute :giveaway_message_id, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :use_date, TD::Types::Coercible::Integer
  end
end
