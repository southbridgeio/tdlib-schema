module TD::Types
  # Describes a boost applied to a chat.
  #
  # @attr id [TD::Types::String] Unique identifier of the boost.
  # @attr count [Integer] The number of identical boosts applied.
  # @attr source [TD::Types::ChatBoostSource] Source of the boost.
  # @attr start_date [Integer] Point in time (Unix timestamp) when the chat was boosted.
  # @attr expiration_date [Integer] Point in time (Unix timestamp) when the boost will expire.
  class ChatBoost < Base
    attribute :id, TD::Types::String
    attribute :count, TD::Types::Coercible::Integer
    attribute :source, TD::Types::ChatBoostSource
    attribute :start_date, TD::Types::Coercible::Integer
    attribute :expiration_date, TD::Types::Coercible::Integer
  end
end
