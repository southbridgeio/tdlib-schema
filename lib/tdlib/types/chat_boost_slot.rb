module TD::Types
  # Describes a slot for chat boost.
  #
  # @attr slot_id [Integer] Unique identifier of the slot.
  # @attr currently_boosted_chat_id [Integer] Identifier of the currently boosted chat; 0 if none.
  # @attr start_date [Integer] Point in time (Unix timestamp) when the chat was boosted; 0 if none.
  # @attr expiration_date [Integer] Point in time (Unix timestamp) when the boost will expire.
  # @attr cooldown_until_date [Integer] Point in time (Unix timestamp) after which the boost can be used for another
  #   chat.
  class ChatBoostSlot < Base
    attribute :slot_id, TD::Types::Coercible::Integer
    attribute :currently_boosted_chat_id, TD::Types::Coercible::Integer
    attribute :start_date, TD::Types::Coercible::Integer
    attribute :expiration_date, TD::Types::Coercible::Integer
    attribute :cooldown_until_date, TD::Types::Coercible::Integer
  end
end
