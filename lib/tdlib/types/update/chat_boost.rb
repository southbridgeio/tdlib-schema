module TD::Types
  # A chat boost has changed; for bots only.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr boost [TD::Types::ChatBoost] New information about the boost.
  class Update::ChatBoost < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :boost, TD::Types::ChatBoost
  end
end
